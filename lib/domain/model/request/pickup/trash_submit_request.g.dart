// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trash_submit_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrashSubmitRequest _$TrashSubmitRequestFromJson(Map<String, dynamic> json) =>
    TrashSubmitRequest(
      json['plastic'] as int,
      json['glass'] as int,
      json['steel'] as int,
      json['pepper'] as int,
      json['isPickup'] as bool,
    );

Map<String, dynamic> _$TrashSubmitRequestToJson(TrashSubmitRequest instance) =>
    <String, dynamic>{
      'plastic': instance.plastic,
      'glass': instance.glass,
      'steel': instance.steel,
      'pepper': instance.pepper,
      'isPickup': instance.isPickup,
    };
