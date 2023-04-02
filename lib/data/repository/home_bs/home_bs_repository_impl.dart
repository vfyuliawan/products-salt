import 'dart:convert';

import 'package:untitled/data/model/base_response/base_remote_response.dart';
import 'package:untitled/data/model/home_bs/home_remote_response.dart';
import 'package:untitled/data/model/home_bs/riwayat_remote_response.dart';
import 'package:untitled/data/model/home_bs/riwayat_response.dart';
import 'package:untitled/data/service/remote/home_BS/home_remote_service_BS.dart';
import 'package:untitled/domain/model/data/home_bs_data/home_data.dart';
import 'package:untitled/domain/base/authentication_header_request.dart.dart';
import 'package:untitled/base/result_entity.dart';
import 'package:untitled/domain/model/data/home_bs_data/riwayat_data.dart';
import 'package:untitled/domain/repository/home_bs/home_bs_repository.dart';

class HomeBSRepositoryImpl implements HomeBSRepository {
  final homeService = HomeRemoteServiceBS();

  @override
  Future<ResultEntity<HomeDataBS>> fetchHome(
      AuthenticationHeaderRequest header) async {
    try {
      print("Fetch Repo");
      final response = await homeService.fetchHome(header);
      if (response.statusCode == 200 || response.statusCode == 201) {
        BaseRemoteResponse<HomeRemoteResponse> baseResponseObject =
            BaseRemoteResponse<HomeRemoteResponse>.fromJson(
                jsonDecode(response.body),
                (json) =>
                    HomeRemoteResponse.fromJson(json as Map<String, dynamic>));

        print(baseResponseObject.data);
        print(baseResponseObject.status!.code);
        HomeRemoteResponse.fromJson(jsonDecode(response.body));

        if (baseResponseObject.status == null) {
          print(baseResponseObject.status);
          return ResultError(message: baseResponseObject.status!.message);
        } else if (baseResponseObject.status?.code != 0) {
          print(baseResponseObject.status!.code);
          // return ResultSuccess(baseResponseObject.data!.toHomeDataBS());
          return ResultError<HomeDataBS>(message: "err 2");
        } else {
          print(baseResponseObject.data);
          return ResultSuccess(baseResponseObject.data!.toHomeDataBS());
        }
      } else {
        print(response.statusCode);
        return ResultError<HomeDataBS>(message: "fa");
      }
    } catch (e) {
      print(e.toString());
      return ResultError(message: e.toString());
    }
  }

  @override
  Future<ResultEntity<List<RiwayatDataBS>>> fetchHistory(
      AuthenticationHeaderRequest header) async {
    try {
      final response = await homeService.fetchHistory(header);
      if (response.statusCode == 200 || response.statusCode == 201) {
        BaseRemoteResponse<RiwayatRemoteResponse> baseResponseObject =
            BaseRemoteResponse<RiwayatRemoteResponse>.fromJson(
                jsonDecode(response.body),
                (json) => RiwayatRemoteResponse.fromJson(
                    json as Map<String, dynamic>));
        RiwayatRemoteResponse.fromJson(jsonDecode(response.body));
        if (baseResponseObject.status == null) {
          return ResultError(message: "status null");
        } else if (baseResponseObject.status!.code != 0) {
          return ResultError(message: "status code not null");
        } else {
          return ResultSuccess(baseResponseObject.data!.toRiwayatData());
        }
      } else {
        return ResultError(message: "");
      }
    } catch (e) {
      print(e.toString());
      return ResultError(message: e.toString());
    }
  }
}
