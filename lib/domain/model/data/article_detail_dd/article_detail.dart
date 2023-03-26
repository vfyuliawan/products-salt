import 'package:untitled/base/base_response_status.dart';
import 'package:untitled/data/model/article_detail_dd/article_detail_status_dd.dart';
import 'package:untitled/domain/model/data/article_detail_dd/article_detail_dd.dart';

class ArticleDetail {
  ArticleDetailDataDD data;
  BaseResponseStatus status;

  ArticleDetail(this.data, this.status);
}
