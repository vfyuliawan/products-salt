// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_detail_remote_response_dd.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArticleDetailRemoteResponse _$ArticleDetailRemoteResponseFromJson(
        Map<String, dynamic> json) =>
    ArticleDetailRemoteResponse(
      status: json['status'] == null
          ? null
          : BaseResponseStatus.fromJson(json['status'] as Map<String, dynamic>),
      data: json['data'] == null
          ? null
          : ArticleDetailDataDDResponse.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ArticleDetailRemoteResponseToJson(
        ArticleDetailRemoteResponse instance) =>
    <String, dynamic>{
      'status': instance.status?.toJson(),
      'data': instance.data?.toJson(),
    };
