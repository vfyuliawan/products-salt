import 'package:untitled/base/base_response_data.dart';
import 'package:untitled/base/result_entity.dart';
import 'package:untitled/base/result_entity_dd.dart';
import 'package:untitled/domain/base/authentication_header_request.dart.dart';
import 'package:untitled/domain/model/data/article/article_data.dart';
import 'package:untitled/domain/model/data/article_detail_dd/article_detail_dd.dart';
import 'package:untitled/domain/model/data/home_bs_data/home_data.dart';
import 'package:untitled/domain/model/data/home_bs_data/riwayat_data.dart';
import 'package:untitled/domain/model/data/laundry_model/collection_data.dart';
import 'package:untitled/domain/model/data/login/login_user_data.dart';

abstract class LaundryRepository {
  Future<ResultEntity<CollectionData>> fetchData();
}
