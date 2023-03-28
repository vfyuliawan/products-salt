import 'dart:convert';

import 'package:untitled/base/base_response_cc/base_remote_response.dart';
import 'package:untitled/base/result_entity.dart';
import 'package:untitled/data/service/remote/forgot_password_dd/forgot_password_dd_service.dart';
import 'package:untitled/domain/repository/forgot_password_dd/forgot_password_dd.dart';

class ForgotPasswordImplDD implements ForgotPassRepositoryDD {
  final service = ForgotPasswordRempteServiceDD();

  @override
  Future<ResultEntity> submitForgotPassword(String email) async {
    try {
      final response = await service.submitForgotPassword(email);
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
