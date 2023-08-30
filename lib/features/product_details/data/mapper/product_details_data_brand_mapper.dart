import 'package:avatar_course2_5_shop/core/extension/extensions.dart';
import 'package:avatar_course2_5_shop/features/product_details/data/response/product_details_data_brand_response.dart';
import 'package:avatar_course2_5_shop/features/product_details/domain/model/product_details_data_brand_model.dart';

extension ProductDetailsDataBrandMapper on ProductDetailsDataBrandResponse {
  ProductDetailsDataBrandModel toDomain() {
    return ProductDetailsDataBrandModel(
      id: id.onNull(),
      name: name.onNull(),
      logo: logo.onNull(),
    );
  }
}
