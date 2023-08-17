import 'package:avatar_course2_5_shop/core/resources/manager_assets.dart';
import 'package:avatar_course2_5_shop/core/resources/manager_colors.dart';
import 'package:avatar_course2_5_shop/core/resources/manager_font_sizes.dart';
import 'package:avatar_course2_5_shop/core/resources/manager_font_weight.dart';
import 'package:avatar_course2_5_shop/core/resources/manager_height.dart';
import 'package:avatar_course2_5_shop/core/resources/manager_strings.dart';
import 'package:avatar_course2_5_shop/core/resources/manager_width.dart';
import 'package:avatar_course2_5_shop/core/widgets/base_button.dart';
import 'package:flutter/material.dart';
import '../../../../route/routes.dart';

class AuthenticationView extends StatefulWidget {
  const AuthenticationView({Key? key}) : super(key: key);

  @override
  State<AuthenticationView> createState() => _AuthenticationViewState();
}

class _AuthenticationViewState extends State<AuthenticationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              ManagerAssets.authBg,
              fit: BoxFit.fitWidth,
            ),
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.black.withOpacity(0.7),
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: ManagerWidth.w50),
            child: Column(
              children: [
                const Spacer(
                  flex: 3,
                ),
                Image.asset(
                  ManagerAssets.logo,
                  width: ManagerWidth.w120,
                  height: ManagerHeight.h120,
                ),
                const Spacer(
                  flex: 1,
                ),
                Text(
                  ManagerStrings.welcomeTo.toUpperCase(),
                  style: TextStyle(
                    color: ManagerColors.white,
                    fontSize: ManagerFontSizes.s24,
                  ),
                ),
                Text(
                  ManagerStrings.appName,
                  style: TextStyle(
                    color: ManagerColors.white,
                    fontSize: ManagerFontSizes.s36,
                    fontWeight: ManagerFontWeight.bold,
                  ),
                ),
                const Spacer(
                  flex: 3,
                ),
                Column(
                  children: [
                    BaseButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Routes.registerView);
                      },
                      title: ManagerStrings.signUp,
                      textStyle: TextStyle(
                        color: ManagerColors.white,
                        fontSize: ManagerFontSizes.s16,
                      ),
                      spacerFlex: 4,
                    ),
                    const SizedBox(height: ManagerHeight.h24),
                    BaseButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Routes.loginView);
                      },
                      title: ManagerStrings.signIn,
                      textStyle: const TextStyle(
                        color: ManagerColors.primaryColor,
                        fontSize: ManagerFontSizes.s16,
                      ),
                      bgColor: ManagerColors.white,
                      spacerFlex: 4,
                    ),
                    const SizedBox(height: ManagerHeight.h24),
                    BaseButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Routes.homeView);
                      },
                      title: ManagerStrings.visitor,
                      textStyle: TextStyle(
                        color: ManagerColors.white,
                        fontSize: ManagerFontSizes.s16,
                      ),
                      bgColor: ManagerColors.white.withOpacity(0.6),
                      spacerFlex: 4,
                    ),
                  ],
                ),
                const Spacer(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
