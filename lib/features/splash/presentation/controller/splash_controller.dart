import 'dart:async';

import 'package:get/get.dart';
import '../../../../core/constants.dart';
import '../../../../core/storage/local/database/shared_preferences/app_settings_shared_preferences.dart';
import '../../../../core/storage/local/database/shared_preferences/user_preference_controller.dart';
import '../../../../core/storage/remote/firebase/controllers/fb_auth_controller.dart';
import '../../../../route/routes.dart';

class SplashController extends GetxController {
  AppSettingsSharedPreferences appSettingsSharedPreferences =
      AppSettingsSharedPreferences();
  late StreamSubscription _streamSubscription;

  @override
  void onInit() {
    super.onInit();
    // appSettingsSharedPreferences.clear();
    // UserPreferenceController().clear();
    Future.delayed(
        const Duration(
          seconds: Constants.splashTime,
        ), () {
      _streamSubscription =
          FbAuthController().checkUserStatus(({required bool loggedIn}) {
        String route = loggedIn ? Routes.homeView : Routes.authenticationView;
        print(appSettingsSharedPreferences.outBoardingViewed);
        String route2 = appSettingsSharedPreferences.outBoardingViewed
            ? route :Routes.outBoardingScreen;
        Get.offAllNamed(route2);
      });
    });
  }
}
