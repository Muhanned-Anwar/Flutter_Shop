import 'package:avatar_course2_5_shop/core/storage/local/database/shared_preferences/app_settings_shared_preferences.dart';
import 'package:avatar_course2_5_shop/features/home/data/data_source/home_api_controller.dart';
import 'package:avatar_course2_5_shop/features/home/presentation/model/home_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/constants.dart';
import '../../../../core/resources/manager_assets.dart';
import '../../../../core/resources/manager_height.dart';
import '../../../../core/resources/manager_width.dart';
import '../model/category_model.dart';

class HomeController extends GetxController {
  List<CategoryModel> categories = [];
  HomeModel homeModel = HomeModel(data: [], success: true, status: 200);
  HomeApiController homeApiController = HomeApiController();
  AppSettingsSharedPreferences appSettingsSharedPreferences =
      AppSettingsSharedPreferences();
  List<HomeDataModel> featuredProducts = [];
  List<HomeDataModel> discountedProducts = [];

  @override
  void onInit() {
    super.onInit();
    readCategories();
    readHome();
  }

  readCategories() async {
    categories = await homeApiController.categories(context: Get.context!);
    update();
  }

  readHome() async {
    homeModel = await homeApiController.home(context: Get.context!);
    homeModel.data.map((e) {
      if (e.featured == 1) {
        featuredProducts.add(e);
      }

      if (e.discount > 0) {
        discountedProducts.add(e);
      }
    });
    update();
  }

  Widget image({required String courseAvatar, String? defaultImage}) {
    if (isURLValid(courseAvatar)) {
      return Image.network(
        courseAvatar,
        fit: BoxFit.fill,
        width: double.infinity,
      );
    }

    return Image.asset(
      defaultImage ?? ManagerAssets.product,
      fit: BoxFit.fill,
      width: ManagerWidth.w156,
      height: ManagerHeight.h148,
    );
  }

  String productPrice(String price) {
    return ' \$ $price \\kg';
  }

  int bestItemsCard(int length) {
    return length > 4 ? 4 : length;
  }
}
