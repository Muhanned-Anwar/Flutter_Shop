// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductDetailsResponse _$ProductDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    ProductDetailsResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) =>
              ProductDetailsDataResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as int?,
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$ProductDetailsResponseToJson(
        ProductDetailsResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
      'success': instance.success,
    };
