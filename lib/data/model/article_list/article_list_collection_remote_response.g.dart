// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_list_collection_remote_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArticleListCollectionRemoteResponse
    _$ArticleListCollectionRemoteResponseFromJson(Map<String, dynamic> json) =>
        ArticleListCollectionRemoteResponse(
          status: json['status'] == null
              ? null
              : ArticleListStatusResponse.fromJson(
                  json['status'] as Map<String, dynamic>),
          data: (json['data'] as List<dynamic>?)
              ?.map((e) =>
                  ArticleListRemoteResponse.fromJson(e as Map<String, dynamic>))
              .toList(),
          pagination: json['pagination'] == null
              ? null
              : ArticleListPaginationResponse.fromJson(
                  json['pagination'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$ArticleListCollectionRemoteResponseToJson(
        ArticleListCollectionRemoteResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
      'pagination': instance.pagination,
    };
