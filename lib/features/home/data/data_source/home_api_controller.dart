import 'dart:convert';
import 'package:avatar_course2_5_shop/core/constants.dart';
import 'package:avatar_course2_5_shop/core/storage/local/database/shared_preferences/app_settings_shared_preferences.dart';
import 'package:avatar_course2_5_shop/core/widgets/helpers.dart';
import 'package:avatar_course2_5_shop/features/home/data/mapper/category_mapper.dart';
import 'package:avatar_course2_5_shop/features/home/data/response/category_response.dart';
import 'package:avatar_course2_5_shop/features/home/presentation/model/category_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

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

  Future get({
    required String endPoint,
    required Map<String, String> header,
  }) async {
    return await http.get(
      Uri.parse(endPoint),
      headers: header,
    );
  }

  Future<List<CategoryModel>> categories({required BuildContext context}) async {
    http.Response response = await get(
      endPoint: ApiRequest.categories,
      header: {},
    );

    var json = jsonDecode(response.body);

    List<dynamic> data = json['data'] ?? [];

    if (response.statusCode >= 200 && response.statusCode < 300) {
      return data.map((category) {
        CategoryResponse categoryResponse = CategoryResponse.fromJson(category);
        CategoryModel categoryModel = categoryResponse.toDomain();
        return categoryModel;
      }).toList();
    }

    showSnackBar(
      context: context,
      message: 'Something Went Error',
      error: true,
    );
    return [];
  }
}
