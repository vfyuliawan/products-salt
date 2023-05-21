// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_rate_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductRateResponse _$ProductRateResponseFromJson(Map<String, dynamic> json) =>
    ProductRateResponse(
      rate: (json['rate'] as num?)?.toDouble(),
      count: json['count'] as int?,
    );

Map<String, dynamic> _$ProductRateResponseToJson(
        ProductRateResponse instance) =>
    <String, dynamic>{
      'rate': instance.rate,
      'count': instance.count,
    };
