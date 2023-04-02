// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'riwayat_remote_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RiwayatRemoteResponse _$RiwayatRemoteResponseFromJson(
        Map<String, dynamic> json) =>
    RiwayatRemoteResponse(
      history: (json['history'] as List<dynamic>?)
          ?.map((e) => RiwayatResponseBS.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RiwayatRemoteResponseToJson(
        RiwayatRemoteResponse instance) =>
    <String, dynamic>{
      'history': instance.history,
    };
