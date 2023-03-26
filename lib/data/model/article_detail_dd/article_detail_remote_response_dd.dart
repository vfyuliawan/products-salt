// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
import 'package:untitled/base/base_response_status.dart';
import 'package:untitled/data/model/article_detail_dd/article_detail_data_dd.dart';
import 'package:untitled/data/model/article_detail_dd/article_detail_status_dd.dart';
import 'package:untitled/domain/base/base_response_status.dart';

import 'package:untitled/domain/model/data/article_detail_dd/article_detail.dart';
import 'package:untitled/domain/model/data/article_detail_dd/article_detail_dd.dart';

part 'article_detail_remote_response_dd.g.dart';

@JsonSerializable(explicitToJson: true)
class ArticleDetailRemoteResponse implements ArticleDetailRemoteResponseMapper {
  BaseResponseStatus? status;
  ArticleDetailDataDDResponse? data;
  ArticleDetailRemoteResponse({
    this.status,
    this.data,
  });

  factory ArticleDetailRemoteResponse.fromJson(Map<String, dynamic> json) =>
      _$ArticleDetailRemoteResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleDetailRemoteResponseToJson(this);

  @override
  ArticleDetail toArticleDetail() {
    return ArticleDetail(
        data?.toArticleDetailDataDD() ??
            ArticleDetailDataDD("", "", "", "", ""),
        status!);
  }
}

abstract class ArticleDetailRemoteResponseMapper {
  ArticleDetail toArticleDetail();
}
