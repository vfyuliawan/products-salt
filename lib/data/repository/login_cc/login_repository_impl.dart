import 'dart:convert';

import 'package:untitled/base/base_response_cc/base_remote_response.dart';
import 'package:untitled/data/model/login/login_remote_response.dart';
import 'package:untitled/data/service/remote/login_cc/login_remote_service_cc.dart';
import 'package:untitled/domain/model/request/login_cc/login_request_cc.dart';
import 'package:untitled/domain/model/data/login/login_user_data.dart';
import 'package:untitled/base/result_entity.dart';
import 'package:untitled/domain/repository/login_cc/login_repository_cc.dart';

class LoginRepositoryImplCC implements LoginRepositoryCC {
  final remoteService = LoginRemoteServiceCC();

  @override
  Future<ResultEntity<UserLoginData>> submitLogin(LoginRequest request) async {
    try {
      final response = await remoteService.submitLogin(request: request);
      if (response.statusCode == 200 || response.statusCode == 201) {
        BaseRemoteResponseCC<LoginRemoteResponse> baseResponseeObject =
            BaseRemoteResponseCC<LoginRemoteResponse>.fromJson(
                jsonDecode(response.body),
                (json) =>
                    LoginRemoteResponse.fromJson(json as Map<String, dynamic>));

        LoginRemoteResponse.fromJson(jsonDecode(response.body));

        if (baseResponseeObject.status == null) {
          return ResultError(message: baseResponseeObject.status!.message);
        } else if (baseResponseeObject.status?.code != 0) {
          return ResultError(message: baseResponseeObject.status!.message);
        } else {
          return ResultSuccess(baseResponseeObject.data!.toUserLoginData());
        }
      } else {
        return ResultError(message: "");
      }
    } catch (error) {
      return ResultError(message: "");
    }
  }
}
