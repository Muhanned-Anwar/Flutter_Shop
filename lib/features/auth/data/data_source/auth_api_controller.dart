import 'dart:convert';

import 'package:avatar_course2_5_shop/core/constants.dart';
import 'package:avatar_course2_5_shop/core/storage/local/database/shared_preferences/app_settings_shared_preferences.dart';
import 'package:avatar_course2_5_shop/core/widgets/helpers.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class AuthApiController with Helpers {
  AppSettingsSharedPreferences appSettingsSharedPreferences =
      AppSettingsSharedPreferences();

  Future<bool> login({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    Uri url = Uri.parse(ApiRequest.login);
    Response response = await http.post(
      url,
      body: {ApiConstants.email: email, ApiConstants.password: password},
      headers: {
        ApiConstants.acceptLanguage: appSettingsSharedPreferences.defaultLocale,
      },
    );
    var json = jsonDecode(response.body);

    if (response.statusCode == 200) {
      appSettingsSharedPreferences.setToken(json[ApiConstants.token] ?? '');
      appSettingsSharedPreferences.setLoggedIn();
      return true;
    }

    showSnackBar(
      context: context,
      message: json[ApiConstants.errorMessage] ?? 'Error',
      error: true,
    );
    return false;
  }
}
