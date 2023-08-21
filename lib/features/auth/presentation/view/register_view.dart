import 'package:avatar_course2_5_shop/core/resources/manager_colors.dart';
import 'package:avatar_course2_5_shop/core/resources/manager_text_styles.dart';
import 'package:avatar_course2_5_shop/features/auth/presentation/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/resources/manager_font_sizes.dart';
import '../../../../core/resources/manager_height.dart';
import '../../../../core/resources/manager_strings.dart';
import '../../../../core/resources/manager_width.dart';
import '../../../../core/widgets/base_button.dart';
import '../../../../route/routes.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(builder: (controller) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: ManagerColors.transparent,
          elevation: 0,
        ),
        body: Container(
          alignment: AlignmentDirectional.centerStart,
          margin: EdgeInsets.symmetric(horizontal: ManagerWidth.w50),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: ManagerHeight.h30),
                Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                    ManagerStrings.signUp.toUpperCase(),
                    style: getBoldTextStyle(
                      color: ManagerColors.black,
                      fontSize: ManagerFontSizes.s36,
                    ),
                  ),
                ),
                SizedBox(height: ManagerHeight.h30),
                TextField(
                  controller: controller.userNameTextEditingController,
                  cursorColor: ManagerColors.primaryColor,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: ManagerStrings.username,
                    labelStyle: getRegularTextStyle(
                        fontSize: ManagerFontSizes.s16,
                        color: ManagerColors.gray),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: ManagerColors.grayLight),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: ManagerColors.primaryColor),
                    ),
                  ),
                ),
                SizedBox(height: ManagerHeight.h16),
                TextField(
                  controller: controller.emailTextEditingController,
                  cursorColor: ManagerColors.primaryColor,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: ManagerStrings.email,
                    labelStyle: getRegularTextStyle(
                        fontSize: ManagerFontSizes.s16,
                        color: ManagerColors.gray),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: ManagerColors.grayLight),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: ManagerColors.primaryColor),
                    ),
                  ),
                ),
                SizedBox(height: ManagerHeight.h16),
                TextField(
                  controller: controller.phoneTextEditingController,
                  cursorColor: ManagerColors.primaryColor,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: ManagerStrings.phone,
                    labelStyle: getRegularTextStyle(
                        fontSize: ManagerFontSizes.s16,
                        color: ManagerColors.gray),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: ManagerColors.grayLight),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: ManagerColors.primaryColor),
                    ),
                  ),
                ),
                SizedBox(height: ManagerHeight.h16),
                TextField(
                  controller: controller.passwordTextEditingController,
                  cursorColor: ManagerColors.primaryColor,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: ManagerStrings.password,
                    labelStyle: getRegularTextStyle(
                      fontSize: ManagerFontSizes.s16,
                      color: ManagerColors.gray,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: ManagerColors.grayLight),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: ManagerColors.primaryColor),
                    ),
                  ),
                ),
                SizedBox(height: ManagerHeight.h16),
                TextField(
                  controller: controller.confirmPasswordTextEditingController,
                  cursorColor: ManagerColors.primaryColor,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: ManagerStrings.confirmPassword,
                    labelStyle: getRegularTextStyle(
                      fontSize: ManagerFontSizes.s16,
                      color: ManagerColors.gray,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: ManagerColors.grayLight),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: ManagerColors.primaryColor),
                    ),
                  ),
                ),
                SizedBox(height: ManagerHeight.h16),
                Row(
                  children: [
                    Text(
                      ManagerStrings.alreadyHaveAccount,
                      style: getRegularTextStyle(
                        color: ManagerColors.black,
                        fontSize: ManagerFontSizes.s16,
                      ),
                    ),
                    SizedBox(width: ManagerWidth.w6),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacementNamed(
                            context, Routes.loginView);
                      },
                      child: Text(
                        ManagerStrings.signIn,
                        style: getRegularTextStyle(
                          color: ManagerColors.primaryColor,
                          fontSize: ManagerFontSizes.s16,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: ManagerHeight.h80),
                BaseButton(
                  onPressed: () {},
                  title: ManagerStrings.register,
                  textStyle: getBoldTextStyle(
                    color: ManagerColors.white,
                    fontSize: ManagerFontSizes.s16,
                  ),
                  spacerFlex: 4,
                ),
                SizedBox(height: ManagerHeight.h10),
              ],
            ),
          ),
        ),
      );
    });
  }
}
