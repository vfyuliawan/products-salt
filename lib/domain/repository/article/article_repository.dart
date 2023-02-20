import 'package:untitled/base/result_entity.dart';
import 'package:untitled/domain/model/article/article_data.dart';

abstract class ArticleRepository {
  Future<ResultEntity<List<ArticleData>>> fetchArticles(String country);
}
