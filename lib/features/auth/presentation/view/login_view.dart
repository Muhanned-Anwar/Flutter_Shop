import 'package:avatar_course2_5_shop/core/constants.dart';
import 'package:avatar_course2_5_shop/core/resources/manager_colors.dart';
import 'package:avatar_course2_5_shop/core/resources/manager_text_styles.dart';
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
        // resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: ManagerColors.transparent,
          elevation: 0,
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          alignment: AlignmentDirectional.centerStart,
          margin: EdgeInsets.symmetric(horizontal: ManagerWidth.w30),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: ManagerHeight.h24,
                ),
                Image.asset(
                  ManagerAssets.loginLogo,
                ),
                SizedBox(
                  height: ManagerHeight.h50,
                ),
                Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                    ManagerStrings.signIn.toUpperCase(),
                    style: getRegularTextStyle(
                      color: ManagerColors.black,
                      fontSize: ManagerFontSizes.s36,
                    ),
                  ),
                ),
                TextField(
                  controller: _emailTextEditingController,
                  cursorColor: ManagerColors.primaryColor,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: ManagerStrings.email,
                    labelStyle: getRegularTextStyle(
                        fontSize: ManagerFontSizes.s16,
                        color: ManagerColors.gray),
                    enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: ManagerColors.secondaryColor),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: ManagerColors.primaryColor),
                    ),
                  ),
                ),
                SizedBox(height: ManagerHeight.h24),
                TextField(
                  controller: _passwordTextEditingController,
                  cursorColor: ManagerColors.primaryColor,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: ManagerStrings.password,
                    labelStyle: getRegularTextStyle(
                        fontSize: ManagerFontSizes.s16,
                        color: ManagerColors.gray),
                    enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: ManagerColors.secondaryColor),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: ManagerColors.primaryColor),
                    ),
                  ),
                ),
                SizedBox(height: ManagerHeight.h14),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: ManagerWidth.w10,
                            height: ManagerHeight.h10,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: ManagerColors.primaryColor,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: ManagerWidth.w6,
                          ),
                          Text(
                            ManagerStrings.rememberMe,
                            style: getRegularTextStyle(
                              color: ManagerColors.black,
                              fontSize: ManagerFontSizes.s16,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 10,),
                      Text(
                        ManagerStrings.forgotYourPassword,
                        style: getRegularTextStyle(
                          color: ManagerColors.primaryColor,
                          fontSize: ManagerFontSizes.s16,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: ManagerHeight.h50,
                ),
                Row(
                  children: [
                    Text(
                      ManagerStrings.donNotHaveAnAccount,
                      style: getRegularTextStyle(
                        color: ManagerColors.black,
                        fontSize: ManagerFontSizes.s16,
                      ),
                    ),
                    SizedBox(width: ManagerWidth.w6),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacementNamed(
                            context, Routes.registerView);
                      },
                      child: Text(
                        ManagerStrings.signUp,
                        style: getRegularTextStyle(
                          color: ManagerColors.primaryColor,
                          fontSize: ManagerFontSizes.s16,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: ManagerHeight.h56,
                ),
                BaseButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.homeView);
                  },
                  title: ManagerStrings.login,
                  textStyle: getBoldTextStyle(
                    color: ManagerColors.white,
                    fontSize: ManagerFontSizes.s16,
                  ),
                  spacerFlex: 4,
                ),
                SizedBox(
                  height: ManagerHeight.h24,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: divider(endIndent: ManagerWidth.w16),
                      ),
                      Text(
                        ManagerStrings.or.toUpperCase(),
                        style: getRegularTextStyle(
                          color: ManagerColors.gray,
                          fontSize: ManagerFontSizes.s16,
                        ),
                      ),
                      Expanded(
                        child: divider(indent: ManagerWidth.w16),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: ManagerHeight.h16,
                ),
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
                SizedBox(height: ManagerHeight.h24),
              ],
            ),
          ),
        ));
  }

  Divider divider({double endIndent = 0, double indent = 0}) {
    return Divider(
      color: ManagerColors.gray,
      thickness: 0.7,
      endIndent: endIndent,
      indent: indent,
    );
  }
}
