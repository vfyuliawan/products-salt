// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
part 'article_detail_status_dd.g.dart';

@JsonSerializable()
class ArticleDetailStatusDD implements ArticleDetailStatusDDMapper {
  int? code;
  String? message;
  ArticleDetailStatusDD({
    this.code,
    this.message,
  });

  factory ArticleDetailStatusDD.fromJson(Map<String, dynamic> json) =>
      _$ArticleDetailStatusDDFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleDetailStatusDDToJson(this);

  @override
  ArticleDetailStatusDD toArticleDetailStatusDD() {
    return ArticleDetailStatusDD(code: code ?? 0, message: message ?? "");
  }
}

abstract class ArticleDetailStatusDDMapper {
  ArticleDetailStatusDD toArticleDetailStatusDD();
}
