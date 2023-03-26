// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'riwayat_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RiwayatResponseBS _$RiwayatResponseBSFromJson(Map<String, dynamic> json) =>
    RiwayatResponseBS(
      date: json['date'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      weight: (json['weight'] as num?)?.toDouble(),
      point: (json['point'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$RiwayatResponseBSToJson(RiwayatResponseBS instance) =>
    <String, dynamic>{
      'date': instance.date,
      'price': instance.price,
      'weight': instance.weight,
      'point': instance.point,
    };
