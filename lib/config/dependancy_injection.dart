import 'package:avatar_course2_5_shop/core/storage/local/database/shared_preferences/app_settings_shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../features/auth/presentation/controller/auth_controller.dart';

initModule() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppSettingsSharedPreferences().initPreferences();
}


initAuth(){
  Get.put<AuthController>(AuthController());
}

disposeAuth(){
  Get.delete<AuthController>();
}