import 'package:untitled/base/result_entity.dart';
import 'package:untitled/domain/model/data/article/article_data.dart';

abstract class ArticleListRepository {
  Future<ResultEntity<List<ArticleData>>> fetchArticlesList(String country);
}
