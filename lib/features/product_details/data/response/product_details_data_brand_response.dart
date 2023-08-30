import 'package:json_annotation/json_annotation.dart';

part 'product_details_data_brand_response.g.dart';

@JsonSerializable()
class ProductDetailsDataBrandResponse {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'logo')
  String? logo;

  ProductDetailsDataBrandResponse({
    required this.id,
    required this.name,
    required this.logo,
  });

  factory ProductDetailsDataBrandResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailsDataBrandResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ProductDetailsDataBrandResponseToJson(this);
}
