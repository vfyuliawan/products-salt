// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
import 'package:untitled/domain/model/data/article_detail_dd/article_detail_dd.dart';

part 'article_detail_data_dd.g.dart';

@JsonSerializable()
class ArticleDetailDataDDResponse implements ArticleDetailDDResponseMapper {
  String? uuid;
  String? image;
  String? title;
  String? description;
  String? createdAt;
  ArticleDetailDataDDResponse({
    this.uuid,
    this.image,
    this.title,
    this.description,
    this.createdAt,
  });

  factory ArticleDetailDataDDResponse.fromJson(Map<String, dynamic> json) =>
      _$ArticleDetailDataDDResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleDetailDataDDResponseToJson(this);

  @override
  ArticleDetailDataDD toArticleDetailDataDD() {
    return ArticleDetailDataDD(uuid ?? "", image ?? "", title ?? "",
        description ?? "", createdAt ?? "");
  }
}

abstract class ArticleDetailDDResponseMapper {
  ArticleDetailDataDD toArticleDetailDataDD();
}
