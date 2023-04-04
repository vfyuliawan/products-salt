// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_jobs_remote_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListJobRemoteResponse _$ListJobRemoteResponseFromJson(
        Map<String, dynamic> json) =>
    ListJobRemoteResponse(
      json['logo'] as String,
      json['position'] as String,
      json['company'] as String,
      json['address'] as String,
      json['createdDate'] as String,
      json['id'] as int,
    );

Map<String, dynamic> _$ListJobRemoteResponseToJson(
        ListJobRemoteResponse instance) =>
    <String, dynamic>{
      'logo': instance.logo,
      'position': instance.position,
      'company': instance.company,
      'address': instance.address,
      'createdDate': instance.createdDate,
      'id': instance.id,
    };
