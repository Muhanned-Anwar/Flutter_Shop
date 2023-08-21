import 'package:avatar_course2_5_shop/core/resources/manager_colors.dart';
import 'package:avatar_course2_5_shop/features/auth/data/data_source/auth_api_controller.dart';
import 'package:avatar_course2_5_shop/route/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/widgets/helpers.dart';

class AuthController extends GetxController with Helpers {
  late TextEditingController emailTextEditingController;
  late TextEditingController passwordTextEditingController;
  late TextEditingController userNameTextEditingController;
  late TextEditingController confirmPasswordTextEditingController;
  late TextEditingController phoneTextEditingController;
  AuthApiController apiController = AuthApiController();

  @override
  void onInit() {
    super.onInit();
    emailTextEditingController = TextEditingController();
    passwordTextEditingController = TextEditingController();
    confirmPasswordTextEditingController = TextEditingController();
    userNameTextEditingController = TextEditingController();
    phoneTextEditingController = TextEditingController();
  }

  @override
  void dispose() {
    emailTextEditingController.dispose();
    passwordTextEditingController.dispose();
    confirmPasswordTextEditingController.dispose();
    userNameTextEditingController.dispose();
    phoneTextEditingController.dispose();
    super.dispose();
  }

  performLogin(BuildContext context) async {
    if (checkData(context)) {
      showDialog(
          context: context,
          builder: (context) {
            return Center(
              child: CircularProgressIndicator(
                color: ManagerColors.primaryColor,
                backgroundColor: ManagerColors.white,
              ),
            );
          });
      if (await apiController.login(
        email: emailTextEditingController.text.toString(),
        password: passwordTextEditingController.text.toString(),
        context: context,
      )) {
        showSnackBar(context: context, message: 'Login Successfully');
        Get.back();
        Get.offAllNamed(Routes.homeView);
      }
      Get.back();
    }
  }

  bool checkData(BuildContext context) {
    if (emailTextEditingController.text.isEmpty) {
      showSnackBar(
        context: context,
        message: 'Email is required',
        error: true,
      );
      return false;
    }

    if (passwordTextEditingController.text.isEmpty) {
      showSnackBar(
        context: context,
        message: 'Password is required',
        error: true,
      );
      return false;
    }
    if (passwordTextEditingController.text.length < 6) {
      showSnackBar(
        context: context,
        message: 'Password must be at least 6 characters',
        error: true,
      );

      return false;
    }

    return true;
  }
}
