import 'package:avatar_course2_5_shop/core/extension/extensions.dart';
import 'package:avatar_course2_5_shop/features/product_details/data/response/product_details_data_photo_response.dart';
import 'package:avatar_course2_5_shop/features/product_details/domain/model/product_details_data_photo_model.dart';

extension ProductDetailsDataPhotoMapper on ProductDetailsDataPhotoResponse {
  ProductDetailsDataPhotoModel toDomain() {
    return ProductDetailsDataPhotoModel(
      variant: variant.onNull(),
      path: path.onNull(),
    );
  }
}
