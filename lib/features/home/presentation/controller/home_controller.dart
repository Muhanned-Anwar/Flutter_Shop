import 'package:avatar_course2_5_shop/features/home/data/data_source/home_api_controller.dart';
import 'package:get/get.dart';
import '../model/category_model.dart';

class HomeController extends GetxController {
  List<CategoryModel> categories = [];
  HomeApiController homeApiController = HomeApiController();

  @override
  void onInit() {
    super.onInit();
    readCategories();
  }

  readCategories() async {
    categories = await homeApiController.categories(context: Get.context!);
  }
}
