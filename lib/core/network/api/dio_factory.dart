import 'package:avatar_course2_5_shop/core/constants.dart';
import 'package:avatar_course2_5_shop/core/storage/local/database/shared_preferences/app_settings_shared_preferences.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  AppSettingsSharedPreferences appSettingsSharedPreferences =
      AppSettingsSharedPreferences();

  Future<Dio> getDio() async {
    Dio dio = Dio();

    dio.options = BaseOptions(
      baseUrl: ApiRequest.baseUrl,
      receiveTimeout: const Duration(
        seconds: ApiConstants.receiveTimeout,
      ),
      sendTimeout: const Duration(
        seconds: ApiConstants.sendTimeout,
      ),
      headers: getHeaders(),
    );
    InterceptorsWrapper interceptorsWrapper = InterceptorsWrapper(
      onRequest: (
        RequestOptions options,
        RequestInterceptorHandler handler,
      ) {
        options.headers[ApiConstants.authorization] = getAuthorization();
        return handler.next(options);
      },
    );
    dio.interceptors.add(interceptorsWrapper);

    if (!kReleaseMode) {
      dio.interceptors.add(
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseHeader: true,
          responseBody: true,
        ),
      );
    }

    return dio;
  }

  String getAuthorization() {
    return '${ApiConstants.bearer} ${appSettingsSharedPreferences.defaultToken}';
  }

  Map<String, String> getHeaders() {
    return {
      ApiConstants.authorization: getAuthorization(),
      ApiConstants.accept: ApiConstants.applicationJson,
      ApiConstants.contentType: ApiConstants.applicationJson,
      ApiConstants.acceptLanguage: appSettingsSharedPreferences.defaultLocale,
    };
  }
}
