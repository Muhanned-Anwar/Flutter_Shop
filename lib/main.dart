import 'package:avatar_course2_5_shop/core/routes.dart';
import 'package:avatar_course2_5_shop/features/auth/presentation/view/authentication_view.dart';
import 'package:avatar_course2_5_shop/features/auth/presentation/view/login_view.dart';
import 'package:avatar_course2_5_shop/features/auth/presentation/view/register_view.dart';
import 'package:avatar_course2_5_shop/features/home/presentation/view/home_view.dart';
import 'package:avatar_course2_5_shop/features/out_boarding/presentation/view/out_boarding_screen.dart';
import 'package:avatar_course2_5_shop/features/splash/presentation/view/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.splashScreen,
      routes: {
        Routes.splashScreen: (context) => const SplashScreen(),
        Routes.outBoardingScreen: (context) => const OutBoardingScreen(),
        Routes.authenticationView: (context) => const AuthenticationView(),
        Routes.loginView: (context) => const LoginView(),
        Routes.registerView: (context) => const RegisterView(),
        Routes.homeView: (context) => const HomeView(),
      },
    );
  }
}
