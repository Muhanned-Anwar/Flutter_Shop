import 'package:json_annotation/json_annotation.dart';
import 'product_details_data_brand_response.dart';
import 'product_details_data_choice_options_response.dart';
import 'product_details_data_photo_response.dart';

part 'product_details_data_response.g.dart';

@JsonSerializable()
class ProductDetailsDataResponse {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'added_by')
  String? addedBy;
  @JsonKey(name: 'seller_id')
  int? sellerId;
  @JsonKey(name: 'shop_id')
  int? shopId;
  @JsonKey(name: 'shop_name')
  String? shopName;
  @JsonKey(name: 'shop_logo')
  String? shopLogo;
  @JsonKey(name: 'photos')
  List<ProductDetailsDataPhotoResponse>? photos;
  @JsonKey(name: 'thumbnail_image')
  String? thumbnailImage;
  @JsonKey(name: 'tags')
  List<String>? tags;
  @JsonKey(name: 'choice_options')
  List<ProductDetailsDataChoiceOptionsResponse>? choiceOptions;
  @JsonKey(name: 'colors')
  List<String>? colors;
  @JsonKey(name: 'has_discount')
  bool? hasDiscount;
  @JsonKey(name: 'stroked_price')
  String? strokedPrice;
  @JsonKey(name: 'main_price')
  String? mainPrice;
  @JsonKey(name: 'calculable_price')
  double? calculablePrice;
  @JsonKey(name: 'currency_symbol')
  String? currencySymbol;
  @JsonKey(name: 'current_stock')
  int? currentStock;
  @JsonKey(name: 'unit')
  String? unit;
  @JsonKey(name: 'rating')
  double? rating;
  @JsonKey(name: 'rating_count')
  int? ratingCount;
  @JsonKey(name: 'earn_point')
  double? earnPoint;
  @JsonKey(name: 'description')
  String? description;
  @JsonKey(name: 'video_link')
  String? videoLink;
  @JsonKey(name: 'link')
  String? link;
  @JsonKey(name: 'brand')
  ProductDetailsDataBrandResponse? brand;

  ProductDetailsDataResponse({
   required this.id,
   required this.name,
   required this.addedBy,
   required this.sellerId,
   required this.shopId,
   required this.shopName,
   required this.shopLogo,
   required this.photos,
   required this.thumbnailImage,
   required this.tags,
   required this.choiceOptions,
   required this.colors,
   required this.hasDiscount,
   required this.strokedPrice,
   required this.mainPrice,
   required this.calculablePrice,
   required this.currencySymbol,
   required this.currentStock,
   required this.unit,
   required this.rating,
   required this.ratingCount,
   required this.earnPoint,
   required this.description,
   required this.videoLink,
   required this.link,
   required this.brand,
  });

  factory ProductDetailsDataResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailsDataResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ProductDetailsDataResponseToJson(this);
}
