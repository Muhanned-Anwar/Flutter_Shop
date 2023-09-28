import 'dart:async';
import 'package:avatar_course2_5_shop/core/storage/local/database/shared_preferences/user_preference_controller.dart';
import 'package:avatar_course2_5_shop/core/storage/remote/firebase/controllers/fb_fire_store_controller.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../../../model/CustomUser.dart';
import '../../../../widgets/helpers.dart';

typedef UserAuthStatus = void Function({required bool loggedIn});

class FbAuthController with Helpers {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<bool> signIn({
    required BuildContext context,
    required String email,
    required String password,
  }) async {
    try {
      UserCredential userCredential = await _firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);

      if (userCredential.user != null) {
        if (userCredential.user!.emailVerified) {
          User? user = _firebaseAuth.currentUser;
          if (user != null) {
            await UserPreferenceController().saveUserInformation(
              user: await FbFireStoreController().readUser(
                id: user.uid.toString(),
              ),
              password: password,
              email: email,
            );
            print(
                '------------------------------------------------------- after read user');
          }
          return true;
        } else {
          userCredential.user?.sendEmailVerification();
          await signOut(context: context);
          showSnackBar(context: context, message: 'verifyEmail', error: true);
          return false;
        }
      }
      return false;
    } on FirebaseAuthException catch (exception) {
      _controlException(context, exception);
    } catch (exception) {
      //
    }

    return false;
  }

  bool loggedIn() => _firebaseAuth.currentUser != null;

  StreamSubscription<User?> checkUserStatus(UserAuthStatus userAuthStatus) {
    return _firebaseAuth.authStateChanges().listen((event) {
      userAuthStatus(loggedIn: event != null);
    });
  }

  Future<bool> createAccount({
    required BuildContext context,
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      UserCredential userCredential = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);
      User? user = userCredential.user;
      // user?.updateDisplayName(name);
      if (userCredential.user != null) {
        CustomUser customUser = CustomUser();
        // customUser.email = email;
        // customUser.password = password;
        customUser.username = name;
        customUser.id = user?.uid ?? '';


        // Create collection users in fireStore for save user information
        if (await FbFireStoreController().createUser(user: customUser)) {
          showSnackBar(context: Get.context!, message: 'Saved SuccessFully');
        } else {
          showSnackBar(context: Get.context!, message: 'Saved Failed', error: true);
        }
        print('varify');
        userCredential.user?.sendEmailVerification();
        return true;
      }
    } on FirebaseAuthException catch (exception) {
      _controlException(context, exception);
    } catch (exception) {
      //
    }
    return false;
  }

  Future<void> signOut({required BuildContext context}) async {
    await _firebaseAuth.signOut();
  }

  // Not Used At Now
  Future<bool> updateUser({
    required BuildContext context,
    required String email,
    required String password,
  }) async {
    try {
      User? currentUser = _firebaseAuth.currentUser;
      currentUser?.updateEmail(email);
      currentUser?.updatePassword(password);
      return true;
    } on FirebaseAuthException catch (exception) {
      _controlException(context, exception);
    } catch (exception) {
      //
    }
    return false;
  }

  Future<bool> changePassword({
    required BuildContext context,
    required String newPassword,
  }) async {
    User? currentUser = _firebaseAuth.currentUser;
    try {
      await currentUser?.updatePassword(newPassword);
      return true;
    } on FirebaseAuthException catch (exception) {
      _controlException(context, exception);
    } catch (exception) {
      print('Exception = $exception');
    }
    return false;
  }

  Future<bool> resetPassword({
    required BuildContext context,
    required String email,
  }) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email);
      return true;
    } on FirebaseAuthException catch (exception) {
      _controlException(context, exception);
    } catch (exception) {
      showError(context: context, error: 'unknown_error');
    }

    return false;
  }

  void _controlException(
    BuildContext context,
    FirebaseAuthException exception,
  ) {
    print(exception.message);
    print('code ${exception.code}');
    String error = '';
    switch (exception.code) {
      case 'wrong-password':
        error = 'wrong_password';
        break;
      case 'user-not-found':
        error = 'user_not_found';
        break;
      case 'network-request-failed':
        error = 'network_request_failed';
        break;
      case 'user-disabled':
        error = 'user_disabled';
        break;
      case 'invalid-email':
        error = 'invalid_email';
        break;
      case 'email-already-in-use':
        error = 'email_already_in_use';
        break;
      default:
        error = 'unknown_error';
        break;
    }
    showError(context: context, error: error);
  }

  showError({required BuildContext context, required String error}) {
    showSnackBar(context: context, message: error, error: true);
  }
}
