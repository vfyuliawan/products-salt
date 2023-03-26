// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsResponseBS _$NewsResponseBSFromJson(Map<String, dynamic> json) =>
    NewsResponseBS(
      news_image: json['news_image'] as String?,
      title: json['title'] as String?,
      lorem: json['lorem'] as String?,
    );

Map<String, dynamic> _$NewsResponseBSToJson(NewsResponseBS instance) =>
    <String, dynamic>{
      'news_image': instance.news_image,
      'title': instance.title,
      'lorem': instance.lorem,
    };
