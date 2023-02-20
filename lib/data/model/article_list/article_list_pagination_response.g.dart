// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_list_pagination_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArticleListPaginationResponse _$ArticleListPaginationResponseFromJson(
        Map<String, dynamic> json) =>
    ArticleListPaginationResponse(
      totalData: json['totalData'] as int?,
      totalPage: json['totalPage'] as int?,
      limit: json['limit'] as int?,
      currentPage: json['currentPage'] as int?,
    );

Map<String, dynamic> _$ArticleListPaginationResponseToJson(
        ArticleListPaginationResponse instance) =>
    <String, dynamic>{
      'totalData': instance.totalData,
      'totalPage': instance.totalPage,
      'limit': instance.limit,
      'currentPage': instance.currentPage,
    };
