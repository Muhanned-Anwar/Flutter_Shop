import 'dart:convert';
import 'package:avatar_course2_5_shop/core/constants.dart';
import 'package:avatar_course2_5_shop/core/storage/local/database/shared_preferences/app_settings_shared_preferences.dart';
import 'package:avatar_course2_5_shop/core/widgets/helpers.dart';
import 'package:avatar_course2_5_shop/features/auth/data/mapper/login_mapper.dart';
import 'package:avatar_course2_5_shop/features/auth/data/response/login_response.dart';
import 'package:avatar_course2_5_shop/features/auth/presentation/model/login_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class HomeApiController with Helpers {
  AppSettingsSharedPreferences appSettingsSharedPreferences =
      AppSettingsSharedPreferences();

  Future post({
    required String endPoint,
    required Map<String, dynamic> body,
    required Map<String, String> header,
  }) async {
    return await http.post(
      Uri.parse(endPoint),
      body: body,
      headers: header,
    );
  }
}
