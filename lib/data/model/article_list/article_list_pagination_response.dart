// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

import 'package:untitled/domain/model/data/article/article_source_data.dart';
import 'package:untitled/domain/model/data/article_list/article_list_pagination_data.dart';

part 'article_list_pagination_response.g.dart';

@JsonSerializable()
class ArticleListPaginationResponse
    implements ArticleListPaginationResponseMapper {
  int? totalData;
  int? totalPage;
  int? limit;
  int? currentPage;
  ArticleListPaginationResponse({
    this.totalData,
    this.totalPage,
    this.limit,
    this.currentPage,
  });

  factory ArticleListPaginationResponse.fromJson(Map<String, dynamic> json) =>
      _$ArticleListPaginationResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleListPaginationResponseToJson(this);

  @override
  ArticleListPaginationData toPaginationData() {
    return ArticleListPaginationData(
        totalData!, totalPage!, limit!, currentPage!);
  }
}

abstract class ArticleListPaginationResponseMapper {
  ArticleListPaginationData toPaginationData();
}
