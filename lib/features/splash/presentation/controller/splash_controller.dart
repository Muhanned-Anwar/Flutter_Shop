import 'package:get/get.dart';
import '../../../../core/constants.dart';
import '../../../../core/storage/local/database/shared_preferences/app_settings_shared_preferences.dart';
import '../../../../route/routes.dart';

class SplashController extends GetxController {
  AppSettingsSharedPreferences appSettingsSharedPreferences = AppSettingsSharedPreferences();

  @override
  void onInit() {
    super.onInit();
    appSettingsSharedPreferences.clear();
    Future.delayed(
        const Duration(
          seconds: Constants.splashTime,
        ),
            () {
          String route = appSettingsSharedPreferences.loggedIn
              ? Routes.homeView
              : appSettingsSharedPreferences.outBoardingViewed ? Routes
              .authenticationView : Routes.outBoardingScreen;

          Get.offAllNamed(route);
        }

    );
  }
}