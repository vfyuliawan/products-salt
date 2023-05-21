// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info_model_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InfoModelResponse _$InfoModelResponseFromJson(Map<String, dynamic> json) =>
    InfoModelResponse(
      json['_postman_id'] as String?,
      json['name'] as String?,
      json['schema'] as String?,
      json['updatedAt'] as String?,
      json['uid'] as String?,
    );

Map<String, dynamic> _$InfoModelResponseToJson(InfoModelResponse instance) =>
    <String, dynamic>{
      '_postman_id': instance.postman_id,
      'name': instance.name,
      'schema': instance.schema,
      'updatedAt': instance.updatedAt,
      'uid': instance.uid,
    };
