// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_list_collection_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArticleListRemoteResponse _$ArticleListRemoteResponseFromJson(
        Map<String, dynamic> json) =>
    ArticleListRemoteResponse(
      uuid: json['uuid'] as String?,
      image: json['image'] as String?,
      title: json['title'] as String?,
      createdAt: json['createdAt'] as String?,
    );

Map<String, dynamic> _$ArticleListRemoteResponseToJson(
        ArticleListRemoteResponse instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'image': instance.image,
      'title': instance.title,
      'createdAt': instance.createdAt,
    };
