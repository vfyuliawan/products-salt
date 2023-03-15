// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
import 'package:untitled/domain/model/data/article_list/article_list_status.dart';

part 'article_list_status_response.g.dart';

abstract class ArticleListStatusResponseMapper {
  ArticleListStatus toArticleListStatus();
}

@JsonSerializable()
class ArticleListStatusResponse implements ArticleListStatusResponseMapper {
  int? code;
  String? message;

  ArticleListStatusResponse({
    this.code,
    this.message,
  });

  factory ArticleListStatusResponse.fromJson(Map<String, dynamic> json) =>
      _$ArticleListStatusResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleListStatusResponseToJson(this);

  @override
  ArticleListStatus toArticleListStatus() {
    return ArticleListStatus(
      code!,
      message ?? "",
    );
  }
}
