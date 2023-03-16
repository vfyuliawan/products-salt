import 'package:http/http.dart';
import 'package:untitled/base/result_entity.dart';
import 'package:untitled/domain/base/authentication_header_request.dart.dart';
import 'package:untitled/domain/model/data/pickup/pickup_data.dart';
import 'package:untitled/domain/model/request/pickup/trash_submit_request.dart';

abstract class PickupRepository {
  Future<ResultEntity<PickupData>> submitTrash(
      AuthenticationHeaderRequest header, TrashSubmitRequest request);
}
