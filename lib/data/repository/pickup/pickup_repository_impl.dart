import 'dart:convert';

import 'package:untitled/data/model/pickup/pickup_submit_remote_response.dart';
import 'package:untitled/data/service/remote/pickup/pickup_remote_service.dart';
import 'package:untitled/domain/model/request/pickup/trash_submit_request.dart';
import 'package:untitled/domain/model/data/pickup/pickup_data.dart';
import 'package:untitled/domain/base/authentication_header_request.dart.dart';
import 'package:untitled/base/result_entity.dart';
import 'package:untitled/domain/repository/pickup/pickup_repository.dart';

class PickupRepositoryImpl implements PickupRepository {
  final pickupRemoteService = PickupRemoteService();

  @override
  Future<ResultEntity<PickupData>> submitTrash(
      AuthenticationHeaderRequest header, TrashSubmitRequest request) async {
    // TODO: implement submitTrash
    try {
      final response = await pickupRemoteService.submitTrash(header, request);
      if (response.statusCode == 200) {
        PickupData pickupData =
            PickupSubmitRemoteResponse.fromJson(jsonDecode(response.body))
                .toPicUpdata();
        return ResultSuccess(pickupData);
      } else {
        return ResultError(message: "Tidak Ada Data");
      }
    } catch (e) {
      return ResultError(message: e.toString());
    }
  }
}
