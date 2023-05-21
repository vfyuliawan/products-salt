import 'dart:convert';

import 'package:untitled/data/model/article/article_collection_remote_response.dart';
import 'package:untitled/data/model/laundry_model/collection_remote_response.dart';
import 'package:untitled/data/service/remote/laundry_remote_service/laundry_remote_service.dart';
import 'package:untitled/domain/model/data/laundry_model/collection_data.dart';
import 'package:untitled/base/result_entity.dart';
import 'package:untitled/domain/repository/laundry_repository/laundry_repository.dart';

class LaundryRepositoryImpl implements LaundryRepository {
  LaundryRemoteService laundryRemoteService = LaundryRemoteService();

  @override
  Future<ResultEntity<CollectionData>> fetchData() async {
    // TODO: implement fetchData
    try {
      final response = await laundryRemoteService.fetchHome();
      print(response.statusCode);
      if (response.statusCode == 200) {
        var result =
            CollectionRemoteResponse.fromJson(jsonDecode(response.body))
                .toCollectionData();

        return ResultSuccess<CollectionData>(result);
      } else {
        return ResultError(message: "Status Code anda ${response.statusCode}");
      }
    } catch (e) {
      print(e.toString());
      return ResultError(message: e.toString());
    }
  }
}
