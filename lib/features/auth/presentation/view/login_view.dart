import 'package:avatar_course2_5_shop/core/resources/manager_colors.dart';
import 'package:flutter/material.dart';
import '../../../../core/resources/manager_assets.dart';
import '../../../../core/resources/manager_font_sizes.dart';
import '../../../../core/resources/manager_font_weight.dart';
import '../../../../core/resources/manager_height.dart';
import '../../../../core/resources/manager_strings.dart';
import '../../../../core/resources/manager_width.dart';
import '../../../../core/widgets/base_button.dart';
import '../../../../route/routes.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late TextEditingController _emailTextEditingController;
  late TextEditingController _passwordTextEditingController;

  @override
  void initState() {
    super.initState();
    _emailTextEditingController = TextEditingController();
    _passwordTextEditingController = TextEditingController();
  }

  @override
  void dispose() {
    _emailTextEditingController.dispose();
    _passwordTextEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ManagerColors.transparent,
          elevation: 0,
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          alignment: AlignmentDirectional.centerStart,
          margin: const EdgeInsets.symmetric(horizontal: ManagerWidth.w50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Spacer(
                flex: 3,
              ),
              Image.asset(
                ManagerAssets.loginLogo,
              ),
              const Spacer(
                flex: 3,
              ),
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: Text(
                  ManagerStrings.signIn.toUpperCase(),
                  style: TextStyle(
                    color: ManagerColors.black,
                    fontSize: ManagerFontSizes.s36,
                    fontWeight: ManagerFontWeight.w600,
                  ),
                ),
              ),
              TextField(
                controller: _emailTextEditingController,
                cursorColor: ManagerColors.primaryColor,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: ManagerStrings.email,
                  labelStyle: TextStyle(
                      fontSize: ManagerFontSizes.s16,
                      color: ManagerColors.gray),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: ManagerColors.secondaryColor),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: ManagerColors.primaryColor),
                  ),
                ),
              ),
              const SizedBox(height: ManagerHeight.h24),
              TextField(
                controller: _passwordTextEditingController,
                cursorColor: ManagerColors.primaryColor,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: ManagerStrings.password,
                  labelStyle: TextStyle(
                      fontSize: ManagerFontSizes.s16,
                      color: ManagerColors.gray),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: ManagerColors.secondaryColor),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: ManagerColors.primaryColor),
                  ),
                ),
              ),
              const SizedBox(height: ManagerHeight.h14),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: ManagerWidth.w10,
                        height: ManagerHeight.h10,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border:
                                Border.all(color: ManagerColors.primaryColor)),
                      ),
                      const SizedBox(width: ManagerWidth.w6),
                      Text(
                        ManagerStrings.rememberMe,
                        style: TextStyle(
                          color: ManagerColors.black,
                          fontSize: ManagerFontSizes.s16,
                        ),
                      ),
                    ],
                  ),
                   Text(
                    ManagerStrings.forgotYourPassword,
                    style: const TextStyle(
                      color: ManagerColors.primaryColor,
                      fontSize: ManagerFontSizes.s16,
                    ),
                  ),
                ],
              ),
              const Spacer(
                flex: 2,
              ),
              Row(
                children: [
                  Text(
                    ManagerStrings.donNotHaveAnAccount,
                    style: TextStyle(
                      color: ManagerColors.black,
                      fontSize: ManagerFontSizes.s16,
                    ),
                  ),
                  const SizedBox(width: ManagerWidth.w6),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(
                          context, Routes.registerView);
                    },
                    child:  Text(
                      ManagerStrings.signUp,
                      style: const TextStyle(
                        color: ManagerColors.primaryColor,
                        fontSize: ManagerFontSizes.s16,
                      ),
                    ),
                  ),
                ],
              ),
              const Spacer(
                flex: 2,
              ),
              BaseButton(
                onPressed: () {
                  Navigator.pushNamed(context, Routes.homeView);
                },
                title: ManagerStrings.login,
                textStyle: TextStyle(
                  color: ManagerColors.white,
                  fontSize: ManagerFontSizes.s16,
                ),
                spacerFlex: 4,
              ),
              const Spacer(),
              Text(
                ManagerStrings.or.toUpperCase(),
                style: TextStyle(
                  color: ManagerColors.gray,
                  fontSize: ManagerFontSizes.s16,
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    ManagerAssets.facebook,
                    width: ManagerWidth.w60,
                    height: ManagerHeight.h60,
                  ),
                  Image.asset(
                    ManagerAssets.google,
                    width: ManagerWidth.w60,
                    height: ManagerHeight.h60,
                  ),
                  Image.asset(
                    ManagerAssets.twitter,
                    width: ManagerWidth.w60,
                    height: ManagerHeight.h60,
                  ),
                ],
              ),
              const Spacer(),
            ],
          ),
        ));
  }
}
