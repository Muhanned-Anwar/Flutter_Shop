// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_details_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductDetailsDataResponse _$ProductDetailsDataResponseFromJson(
        Map<String, dynamic> json) =>
    ProductDetailsDataResponse(
      id: json['id'] as int?,
      name: json['name'] as String?,
      addedBy: json['added_by'] as String?,
      sellerId: json['seller_id'] as int?,
      shopId: json['shop_id'] as int?,
      shopName: json['shop_name'] as String?,
      shopLogo: json['shop_logo'] as String?,
      photos: (json['photos'] as List<dynamic>?)
          ?.map((e) => ProductDetailsDataPhotoResponse.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      thumbnailImage: json['thumbnail_image'] as String?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      choiceOptions: (json['choice_options'] as List<dynamic>?)
          ?.map((e) => ProductDetailsDataChoiceOptionsResponse.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      colors:
          (json['colors'] as List<dynamic>?)?.map((e) => e as String).toList(),
      hasDiscount: json['has_discount'] as bool?,
      strokedPrice: json['stroked_price'] as String?,
      mainPrice: json['main_price'] as String?,
      calculablePrice: (json['calculable_price'] as num?)?.toDouble(),
      currencySymbol: json['currency_symbol'] as String?,
      currentStock: json['current_stock'] as int?,
      unit: json['unit'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      ratingCount: json['rating_count'] as int?,
      earnPoint: (json['earn_point'] as num?)?.toDouble(),
      description: json['description'] as String?,
      videoLink: json['video_link'] as String?,
      link: json['link'] as String?,
      brand: json['brand'] == null
          ? null
          : ProductDetailsDataBrandResponse.fromJson(
              json['brand'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductDetailsDataResponseToJson(
        ProductDetailsDataResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'added_by': instance.addedBy,
      'seller_id': instance.sellerId,
      'shop_id': instance.shopId,
      'shop_name': instance.shopName,
      'shop_logo': instance.shopLogo,
      'photos': instance.photos,
      'thumbnail_image': instance.thumbnailImage,
      'tags': instance.tags,
      'choice_options': instance.choiceOptions,
      'colors': instance.colors,
      'has_discount': instance.hasDiscount,
      'stroked_price': instance.strokedPrice,
      'main_price': instance.mainPrice,
      'calculable_price': instance.calculablePrice,
      'currency_symbol': instance.currencySymbol,
      'current_stock': instance.currentStock,
      'unit': instance.unit,
      'rating': instance.rating,
      'rating_count': instance.ratingCount,
      'earn_point': instance.earnPoint,
      'description': instance.description,
      'video_link': instance.videoLink,
      'link': instance.link,
      'brand': instance.brand,
    };
