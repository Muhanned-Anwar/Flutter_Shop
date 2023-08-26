import 'package:avatar_course2_5_shop/core/extension/extensions.dart';
import 'package:avatar_course2_5_shop/features/home/data/response/category_response.dart';
import 'package:avatar_course2_5_shop/features/home/presentation/model/category_model.dart';

extension CategoryMapper on CategoryResponse {
  CategoryModel toDomain() {
    return CategoryModel(
      id: id.onNull(),
      name: name.onNull(),
      banner: banner.onNull(),
      icon: icon.onNull(),
      numberOfChildren: numberOfChildren.onNull(),
      links: links!.toDomain(),
    );
  }
}

extension CategoryLinksMapper on CategoryResponseLinks {
  Links toDomain() {
    return Links(
      products: products.onNull(),
      subCategories: subCategories.onNull(),
    );
  }
}
