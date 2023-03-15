import 'dart:convert';

import 'package:untitled/base/result_entity.dart';
import 'package:untitled/data/model/article/article_collection_remote_response.dart';
import 'package:untitled/data/service/remote/article_remote_service.dart';
import 'package:untitled/domain/model/data/article/article_data.dart';
import 'package:untitled/domain/repository/article/article_repository.dart';

class ArticleRepositoryImpl implements ArticleRepository {
  final articleRemoteService = ArticleRemoteService();

  @override
  Future<ResultEntity<List<ArticleData>>> fetchArticles(String country) async {
    try {
      print("FETCH 2 : REPO");
      final response = await articleRemoteService.fetchArticles(country);

      print("RESPONSE : ${response.statusCode}");

      if (response.statusCode == 200) {
        var a =
            ArticleCollectionRemoteResponse.fromJson(jsonDecode(response.body))
                    .articles
                    ?.map((e) => e.toArticleData())
                    .toList() ??
                List.empty();

        print("ARTICLE : ${a.length}");

        return ResultSuccess<List<ArticleData>>(a);
      } else {
        return ResultError<List<ArticleData>>();
      }
    } catch (e) {
      print("ERROR : $e");
      return ResultError(message: "error fetch article");
    }
  }
}
