import 'product_details_data_model.dart';

class ProductDetailsModel {
  List<ProductDetailsDataModel> data;
  int status;
  bool success;

  ProductDetailsModel({
    required this.data,
    required this.status,
    required this.success,
  });
}
