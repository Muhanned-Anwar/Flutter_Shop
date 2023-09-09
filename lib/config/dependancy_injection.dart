import 'package:avatar_course2_5_shop/core/internet_checker/internet_checker.dart';
import 'package:avatar_course2_5_shop/core/network/api/app_api.dart';
import 'package:avatar_course2_5_shop/core/network/api/dio_factory.dart';
import 'package:avatar_course2_5_shop/core/storage/local/database/shared_preferences/app_settings_shared_preferences.dart';
import 'package:avatar_course2_5_shop/core/storage/remote/firebase/controllers/fb_notifications.dart';
import 'package:avatar_course2_5_shop/features/home/presentation/controller/home_controller.dart';
import 'package:avatar_course2_5_shop/features/product_details/data/data_source/remote_data_source.dart';
import 'package:avatar_course2_5_shop/features/product_details/domain/repository/product_dertails_repository.dart';
import 'package:avatar_course2_5_shop/features/product_details/domain/use_case/product_details_use_case.dart';
import 'package:avatar_course2_5_shop/features/settings/presentation/controller/locale_notifier_controller.dart';
import 'package:avatar_course2_5_shop/firebase_options.dart';
import 'package:dio/dio.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import '../features/auth/presentation/controller/auth_controller.dart';
import '../features/splash/presentation/controller/splash_controller.dart';

final instance = GetIt.instance;

initFirebase() async{
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform
  );

  final fbNotifications = FbNotifications();
  await fbNotifications.requestNotificationPermissions();
  await fbNotifications.initializeForegroundNotificationForAndroid();
  FbNotifications.initNotifications();
}

initModule() async {
  WidgetsFlutterBinding.ensureInitialized();
  initFirebase();
  await AppSettingsSharedPreferences().initPreferences();

  if (!GetIt.I.isRegistered<NetworkInfo>()) {
    instance.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImplementation(
        InternetConnectionCheckerPlus(),
      ),
    );
  }

  if (!GetIt.I.isRegistered<DioFactory>()) {
    instance.registerLazySingleton<DioFactory>(
      () => DioFactory(),
    );
  }

  if (!GetIt.I.isRegistered<AppApi>()) {
    Dio dio = await instance<DioFactory>().getDio();
    instance.registerLazySingleton<AppApi>(
      () => AppApi(dio),
    );
  }
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
  initProductDetails();

  Get.put<HomeController>(HomeController());
}

disposeHome() {}

initProductDetails() {
  if (!GetIt.I.isRegistered<ProductDetailsRemoteDataSource>()) {
    instance.registerLazySingleton<ProductDetailsRemoteDataSource>(
      () => ProductDetailsRemoteDataSourceImplementation(
        instance<AppApi>(),
      ),
    );
  }

  if (!GetIt.I.isRegistered<ProductDetailsRepository>()) {
    instance.registerLazySingleton<ProductDetailsRepository>(
      () => ProductDetailsRepositoryImplementation(
        data: instance(),
        networkInfo: instance(),
      ),
    );
  }

  if (!GetIt.I.isRegistered<ProductDetailsUseCaseImplementation>()) {
    instance.registerLazySingleton<ProductDetailsUseCaseImplementation>(
      () => ProductDetailsUseCaseImplementation(
        instance(),
      ),
    );
  }
}

disposeProductDetails() {}

initLocale(){
  Get.put<LocaleNotifierController>(LocaleNotifierController());
}