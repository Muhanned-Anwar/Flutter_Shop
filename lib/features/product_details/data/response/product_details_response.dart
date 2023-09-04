import 'package:json_annotation/json_annotation.dart';
import 'product_details_data_response.dart';

part 'product_details_response.g.dart';

@JsonSerializable()
class ProductDetailsResponse {
  @JsonKey(name: 'data')
  List<ProductDetailsDataResponse>? data;
  @JsonKey(name: 'status')
  int? status;
  @JsonKey(name: 'success')
  bool? success;

  ProductDetailsResponse({
    required this.data,
    required this.status,
    required this.success,
  });

  factory ProductDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailsResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ProductDetailsResponseToJson(this);
}
