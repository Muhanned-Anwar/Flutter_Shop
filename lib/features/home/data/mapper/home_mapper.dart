import 'package:avatar_course2_5_shop/core/extension/extensions.dart';
import 'package:avatar_course2_5_shop/features/home/data/response/home_response.dart';
import 'package:avatar_course2_5_shop/features/home/presentation/model/home_model.dart';

extension HomeMapper on HomeResponse {
  HomeModel toDomain() {
    return HomeModel(
      data:
          data!.map((homeDataResponse) => homeDataResponse.toDomain()).toList(),
      success: success.onNull(),
      status: status.onNull(),
    );
  }
}

extension HomeDataMapper on HomeDataResponse {
  HomeDataModel toDomain() {
    return HomeDataModel(
      id: id.onNull(),
      name: name.onNull(),
      photos: photos.onNull(),
      thumbnailImage: thumbnailImage.onNull(),
      basePrice: basePrice.onNull(),
      baseDiscountedPrice: baseDiscountedPrice.onNull(),
      todaysDeal: todaysDeal.onNull(),
      featured: featured.onNull(),
      unit: unit.onNull(),
      discount: discount.onNull(),
      discountType: discountType.onNull(),
      rating: rating.onNull(),
      sales: sales.onNull(),
      links: links!.toDomain(),
    );
  }
}

extension HomeLinksMapper on HomeResponseLinks {
  HomeModelLinks toDomain() {
    return HomeModelLinks(
      details: details.onNull(),
      reviews: reviews.onNull(),
      related: related.onNull(),
    );
  }
}
