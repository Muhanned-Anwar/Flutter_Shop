import 'package:avatar_course2_5_shop/core/model/CustomUser.dart';
import 'package:avatar_course2_5_shop/core/storage/local/database/shared_preferences/app_settings_shared_preferences.dart';
import 'package:avatar_course2_5_shop/core/storage/local/database/shared_preferences/user_preference_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class FbFireStoreController {
  final FirebaseFirestore _fireStore = FirebaseFirestore.instance;
  static const String table_users_name = 'Users';

  Future<bool> createUser({required CustomUser user}) async {
    return await _fireStore
        .collection(table_users_name)
        .add(user.toMap())
        .then((value) => true)
        .catchError((error) => false);
  }

  Future<CustomUser> readUser({required String id}) async {
    return await _fireStore
        .collection(table_users_name)
        .where('user_id', isEqualTo: id)
        .get()
        .then((value) {
      CustomUser user = CustomUser();
      user.id = value.docs.first.get('user_id');
      user.username = value.docs.first.get('user_name');
      user.address = value.docs.first.get('address');
      user.birthDate = value.docs.first.get('birth_date');
      user.gender = value.docs.first.get('gender');
      user.phoneNumber = value.docs.first.get('phone_number');
      user.profileImage = value.docs.first.get('profile_image');
      user.documentId = value.docs.first.id;
      print("doc ${value.docs.first.id}");
      return user;
    }, onError: (e) {
      return CustomUser();
    });
  }

  Future<bool> updateUser({
    required BuildContext context,
    required CustomUser customer,
  }) async {
    bool update = await _fireStore
        .collection(table_users_name)
        .doc(customer.documentId)
        .update(customer.toMap())
        .then((value) => true)
        .catchError((error) {
          print(error);
        })
        .onError((error, stackTrace) => false)
        .timeout(Duration(seconds: 5), onTimeout: () {
          return false;
        });

    bool result = update;
    print('result $result');
    if (result) {
      UserPreferenceController().saveUserInformation(
        user: customer,
        email: UserPreferenceController().userInformation.email,
        password: UserPreferenceController().userInformation.password,
      );
    } else {
      Navigator.pop(context);
    }

    return result;
  }

  Future<bool> updateUserCountry(
      {required BuildContext context,
      required String country,
      required String docId}) async {
    print('before result');

    bool update = await _fireStore
        .collection(table_users_name)
        .doc(docId)
        .update({
          'address': country,
        })
        .then((value) => true)
        .catchError((error) {
          print(error);
        })
        .onError((error, stackTrace) => false)
        .timeout(const Duration(seconds: 5), onTimeout: () {
          print('timeout');
          return false;
        });

    bool result = update;
    if (result) {
      UserPreferenceController().saveUserCountry(
        country: country,
      );
    } else {
      Get.back();
    }

    return result;
  }
}
