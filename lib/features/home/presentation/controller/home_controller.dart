import 'package:avatar_course2_5_shop/core/storage/local/database/shared_preferences/app_settings_shared_preferences.dart';
import 'package:avatar_course2_5_shop/features/home/data/data_source/home_api_controller.dart';
import 'package:avatar_course2_5_shop/features/home/presentation/model/home_model.dart';
import 'package:get/get.dart';
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
}
