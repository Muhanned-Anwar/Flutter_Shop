import 'package:avatar_course2_5_shop/config/dependancy_injection.dart';
import 'package:avatar_course2_5_shop/core/resources/manager_strings.dart';
import 'package:avatar_course2_5_shop/features/auth/presentation/view/register_view.dart';
import 'package:avatar_course2_5_shop/features/home/presentation/view/item_details_view.dart';
import 'package:flutter/material.dart';
import '../features/auth/presentation/view/authentication_view.dart';
import '../features/auth/presentation/view/login_view.dart';
import '../features/home/presentation/view/home_view.dart';
import '../features/out_boarding/presentation/view/out_boarding_screen.dart';
import '../features/splash/presentation/view/splash_screen.dart';

class Routes {
  static const String splashScreen = '/splash_screen';
  static const String outBoardingScreen = '/out_boarding_screen';
  static const String authenticationView = '/authenticationView';
  static const String loginView = '/loginView';
  static const String registerView = '/registerView';
  static const String homeView = '/HomeView';
  static const String itemDetails = '/itemDetails';
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashScreen:
        initSplash();
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.outBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OutBoardingScreen());
      case Routes.authenticationView:
        initAuth();
        return MaterialPageRoute(builder: (_) => const AuthenticationView());
      case Routes.loginView:
        return MaterialPageRoute(builder: (_) => const LoginView());
      case Routes.registerView:
        return MaterialPageRoute(builder: (_) => const RegisterView());
      case Routes.homeView:
        initHome();
        return MaterialPageRoute(builder: (_) => const HomeView());
        case Routes.itemDetails:
        return MaterialPageRoute(builder: (_) => const ItemDetails());
      default:
        return unDefineRoute();
    }
  }

  static Route<dynamic> unDefineRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Text(ManagerStrings.notFoundRoute),
        ),
      ),
    );
  }
}
