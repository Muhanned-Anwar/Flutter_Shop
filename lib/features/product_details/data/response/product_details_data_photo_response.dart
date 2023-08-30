import 'package:json_annotation/json_annotation.dart';

part 'product_details_data_photo_response.g.dart';

@JsonSerializable()
class ProductDetailsDataPhotoResponse {
  @JsonKey(name: 'variant')
  String? variant;
  @JsonKey(name: 'path')
  String? path;

  ProductDetailsDataPhotoResponse({
   required this.variant,
   required this.path,
  });

  factory ProductDetailsDataPhotoResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailsDataPhotoResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ProductDetailsDataPhotoResponseToJson(this);
}
