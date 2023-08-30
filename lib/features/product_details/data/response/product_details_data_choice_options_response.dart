import 'package:json_annotation/json_annotation.dart';

part 'product_details_data_choice_options_response.g.dart';

@JsonSerializable()
class ProductDetailsDataChoiceOptionsResponse {
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'options')
  List<String>? options;
  @JsonKey(name: 'title')
  String? title;

  ProductDetailsDataChoiceOptionsResponse({
    required this.name,
    required this.options,
    required this.title,
  });

  factory ProductDetailsDataChoiceOptionsResponse.fromJson(
          Map<String, dynamic> json) =>
      _$ProductDetailsDataChoiceOptionsResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ProductDetailsDataChoiceOptionsResponseToJson(this);
}
