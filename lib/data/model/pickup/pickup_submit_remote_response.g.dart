// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pickup_submit_remote_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PickupSubmitRemoteResponse _$PickupSubmitRemoteResponseFromJson(
        Map<String, dynamic> json) =>
    PickupSubmitRemoteResponse(
      plastic: json['plastic'] as int?,
      glass: json['glass'] as int?,
      steel: json['steel'] as int?,
      pepper: json['pepper'] as int?,
      isPickup: json['isPickup'] as bool?,
    );

Map<String, dynamic> _$PickupSubmitRemoteResponseToJson(
        PickupSubmitRemoteResponse instance) =>
    <String, dynamic>{
      'plastic': instance.plastic,
      'glass': instance.glass,
      'steel': instance.steel,
      'pepper': instance.pepper,
      'isPickup': instance.isPickup,
    };
