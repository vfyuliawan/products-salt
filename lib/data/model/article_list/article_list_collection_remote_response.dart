import 'package:json_annotation/json_annotation.dart';
import 'package:untitled/data/model/article_list/article_list_collection_response.dart';
import 'package:untitled/data/model/article_list/article_list_pagination_response.dart';
import 'package:untitled/data/model/article_list/article_list_status_response.dart';
import 'package:untitled/domain/model/data/article_list/article_list_data.dart';

part 'article_list_collection_remote_response.g.dart';

@JsonSerializable()
class ArticleListCollectionRemoteResponse
    implements ArticleCollectionRemoteResponseMapper {
  ArticleListStatusResponse? status;
  List<ArticleListRemoteResponse>? data;
  ArticleListPaginationResponse? pagination;

  ArticleListCollectionRemoteResponse(
      {this.status, this.data, this.pagination});

  factory ArticleListCollectionRemoteResponse.fromJson(
          Map<String, dynamic> json) =>
      _$ArticleListCollectionRemoteResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ArticleListCollectionRemoteResponseToJson(this);

  @override
  List<ArticleListData> toArticleListData() {
    return data?.map((e) => e.toArticleListData()).toList() ?? List.empty();
  }
}

abstract class ArticleCollectionRemoteResponseMapper {
  List<ArticleListData> toArticleListData();
}
