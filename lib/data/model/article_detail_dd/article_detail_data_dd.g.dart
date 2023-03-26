// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_detail_data_dd.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArticleDetailDataDDResponse _$ArticleDetailDataDDResponseFromJson(
        Map<String, dynamic> json) =>
    ArticleDetailDataDDResponse(
      uuid: json['uuid'] as String?,
      image: json['image'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      createdAt: json['createdAt'] as String?,
    );

Map<String, dynamic> _$ArticleDetailDataDDResponseToJson(
        ArticleDetailDataDDResponse instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'image': instance.image,
      'title': instance.title,
      'description': instance.description,
      'createdAt': instance.createdAt,
    };
