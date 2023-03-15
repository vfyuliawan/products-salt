// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:json_annotation/json_annotation.dart';

import 'package:untitled/data/model/article/article_source_response.dart';
import 'package:untitled/domain/model/data/article/article_data.dart';
import 'package:untitled/domain/model/data/article/article_source_data.dart';
import 'package:untitled/domain/model/data/article_list/article_list_data.dart';

part 'article_list_collection_response.g.dart';

abstract class ArticleListRemoteResponseMapper {
  ArticleListData toArticleListData();
}

@JsonSerializable()
class ArticleListRemoteResponse implements ArticleListRemoteResponseMapper {
  String? uuid;
  String? image;
  String? title;
  String? createdAt;
  ArticleListRemoteResponse({
    this.uuid,
    this.image,
    this.title,
    this.createdAt,
  });

  factory ArticleListRemoteResponse.fromJson(Map<String, dynamic> json) =>
      _$ArticleListRemoteResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleListRemoteResponseToJson(this);

  @override
  ArticleListData toArticleListData() {
    return ArticleListData(
      uuid ?? "",
      image ?? "",
      title ?? "",
      createdAt ?? "",
    );
  }
}
