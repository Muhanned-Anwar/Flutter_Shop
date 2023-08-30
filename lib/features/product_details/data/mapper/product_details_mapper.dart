import 'package:avatar_course2_5_shop/core/extension/extensions.dart';
import 'package:avatar_course2_5_shop/features/product_details/data/mapper/product_details_data_mapper.dart';
import 'package:avatar_course2_5_shop/features/product_details/data/response/product_details_response.dart';
import 'package:avatar_course2_5_shop/features/product_details/domain/model/product_details_model.dart';

extension ProductDetailsMapper on ProductDetailsResponse {
  ProductDetailsModel toDomain() {
    return ProductDetailsModel(
      data: data!.map((e) => e.toDomain()).toList(),
      status: status.onNull(),
      success: success.onNull(),
    );
  }
}
