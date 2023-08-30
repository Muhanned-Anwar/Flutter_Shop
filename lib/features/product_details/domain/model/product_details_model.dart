import 'product_details_data_model.dart';

class ProductDetailsModel {
  List<ProductDetailsDataModel> data;
  int status;
  String success;

  ProductDetailsModel({
    required this.data,
    required this.status,
    required this.success,
  });
}
