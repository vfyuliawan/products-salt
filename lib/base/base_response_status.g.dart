// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseStatus _$BaseResponseStatusFromJson(Map<String, dynamic> json) =>
    BaseResponseStatus(
      code: json['code'] as int?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$BaseResponseStatusToJson(BaseResponseStatus instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
    };
