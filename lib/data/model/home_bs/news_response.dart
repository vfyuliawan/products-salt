// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names
import 'package:json_annotation/json_annotation.dart';
import 'package:untitled/domain/model/data/home_bs_data/news_data.dart';

part 'news_response.g.dart';

@JsonSerializable()
class NewsResponseBS implements NewsResponseBSMapper {
  String? news_image;
  String? title;
  String? lorem;
  NewsResponseBS({
    this.news_image,
    this.title,
    this.lorem,
  });

  factory NewsResponseBS.fromJson(Map<String, dynamic> json) =>
      _$NewsResponseBSFromJson(json);

  Map<String, dynamic> toJson() => _$NewsResponseBSToJson(this);

  @override
  NewsDataBS toNewResponseData() {
    return NewsDataBS(news_image ?? "", title ?? "", lorem ?? "");
  }
}

abstract class NewsResponseBSMapper {
  NewsDataBS toNewResponseData();
}
