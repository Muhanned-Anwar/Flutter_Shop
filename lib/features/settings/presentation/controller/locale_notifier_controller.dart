import 'package:avatar_course2_5_shop/core/storage/local/database/shared_preferences/app_settings_shared_preferences.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../../../config/locale/locale_settings.dart';

class LocaleNotifierController extends GetxController {
  final AppSettingsSharedPreferences _appSettingsPrefs =
      AppSettingsSharedPreferences();
  final languagesList = LocaleSettings.languages;

  String get currentLanguage => _appSettingsPrefs.defaultLocale;

  Future<void> changeLanguage(
      {required BuildContext context, required String languageCode}) async {
    _appSettingsPrefs.setDefaultLocale(languageCode);
    EasyLocalization.of(context)!.setLocale(
      Locale(
        languageCode,
      ),
    );
    Get.updateLocale(Locale(languageCode));
    update();
  }
}
