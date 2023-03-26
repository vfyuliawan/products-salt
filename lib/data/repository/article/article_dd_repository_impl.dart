import 'dart:convert';

import 'package:untitled/base/result_entity.dart';
import 'package:untitled/base/result_entity_dd.dart';
import 'package:untitled/data/model/article/article_collection_remote_response.dart';
import 'package:untitled/data/model/article_detail_dd/article_detail_data_dd.dart';
import 'package:untitled/data/model/article_detail_dd/article_detail_remote_response_dd.dart';
import 'package:untitled/data/service/remote/article_detail_dd/article_detail_dd.dart';
import 'package:untitled/data/service/remote/article_remote_service.dart';
import 'package:untitled/domain/base/authentication_header_request.dart.dart';
import 'package:untitled/domain/model/data/article/article_data.dart';
import 'package:untitled/domain/model/data/article_detail_dd/article_detail.dart';
import 'package:untitled/domain/model/data/article_detail_dd/article_detail_dd.dart';
import 'package:untitled/domain/repository/article/article_repository.dart';
import 'package:untitled/domain/repository/article_detail_dd/article_detail_dd_repository.dart';

class ArticleDDRepositoryImpl implements ArticleDetailDDRepository {
  final articleRemoteService = ArticleDetailDDService();

  @override
  Future<ResultEntityDD<ArticleDetailDataDD>> fetchDetailData(
      AuthenticationHeaderRequest header, String uuid) async {
    try {
      print("FETCH 2 : REPO");
      final response =
          await articleRemoteService.fetchArticleDetaIL(header, uuid);

      if (response.statusCode == 200) {
        final data =
            ArticleDetailRemoteResponse.fromJson(jsonDecode(response.body))
                .toArticleDetail();
        print(response.body);
        print(data);
        if (data.status.code != 0) {
          return ResultSuccessDD<ArticleDetailDataDD>(
              data: data.data, status: data.status);
        } else {
          return ResultErrorDD(message: data.status.message);
        }
      } else {
        return ResultErrorDD(message: "");
      }
    } catch (e) {
      return ResultErrorDD(message: e.toString());
    }
  }
}
