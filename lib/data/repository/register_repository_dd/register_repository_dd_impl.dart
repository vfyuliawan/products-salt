import 'dart:convert';

import 'package:untitled/base/base_response_cc/base_remote_response.dart';
import 'package:untitled/base/result_entity.dart';
import 'package:untitled/data/service/remote/register_dd/register_dd_remote_service.dart';
import 'package:untitled/domain/base/authentication_header_request.dart.dart';
import 'package:untitled/domain/model/request/register_dd/register_request_dd.dart';
import 'package:untitled/domain/repository/register_repository_dd/register_repository_dd.dart';

class RegisterRepositoryImplDD implements RegisterRepositoryDD {
  final service = RegisterRemoteServiceDD();

  @override
  Future<ResultEntity> submitRegister(RegisterRequestDD request,
      AuthenticationHeaderRequest headerRequest) async {
    try {
      final response = await service.submitRequest(headerRequest, request);
      if (response.statusCode == 200 || response.statusCode == 201) {
        BaseRemoteResponseCC baseResponseData = BaseRemoteResponseCC.fromJson(
            jsonDecode(response.body), (json) => null);
        if (baseResponseData.status == null) {
          return ResultError(message: baseResponseData.status!.message);
        } else if (baseResponseData.status!.code != 0) {
          return ResultError(message: baseResponseData.status!.message);
        } else {
          return ResultSuccess(baseResponseData.data);
        }
      } else {
        return ResultError(message: "not found");
      }
    } catch (e) {
      return ResultError(message: e.toString());
    }
  }
}
