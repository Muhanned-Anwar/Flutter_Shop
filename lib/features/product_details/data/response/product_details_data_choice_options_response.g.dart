// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_details_data_choice_options_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductDetailsDataChoiceOptionsResponse
    _$ProductDetailsDataChoiceOptionsResponseFromJson(
            Map<String, dynamic> json) =>
        ProductDetailsDataChoiceOptionsResponse(
          name: json['name'] as String?,
          options: (json['options'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          title: json['title'] as String?,
        );

Map<String, dynamic> _$ProductDetailsDataChoiceOptionsResponseToJson(
        ProductDetailsDataChoiceOptionsResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'options': instance.options,
      'title': instance.title,
    };
