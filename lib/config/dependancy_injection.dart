import 'package:avatar_course2_5_shop/core/storage/local/database/shared_preferences/app_settings_shared_preferences.dart';
import 'package:avatar_course2_5_shop/features/home/presentation/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../features/auth/presentation/controller/auth_controller.dart';
import '../features/splash/presentation/controller/splash_controller.dart';

initModule() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppSettingsSharedPreferences().initPreferences();
}

initSplash() {
  Get.put<SplashController>(SplashController());
}

disposeSplash() {
  Get.delete<SplashController>();
}

initAuth() {
  disposeSplash();
  Get.put<AuthController>(AuthController());
}

disposeAuth() {
  Get.delete<AuthController>();
}

initHome() {
  disposeSplash();
  disposeAuth();

  Get.put<HomeController>(HomeController());
}

disposeHome() {}
