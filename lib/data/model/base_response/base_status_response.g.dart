// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_status_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseStatusResponse _$BaseStatusResponseFromJson(Map<String, dynamic> json) =>
    BaseStatusResponse(
      code: json['code'] as int?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$BaseStatusResponseToJson(BaseStatusResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
    };
