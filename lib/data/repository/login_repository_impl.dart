import 'dart:convert';

import 'package:untitled/base/result_entity.dart';
import 'package:untitled/data/model/login/login_remote_response.dart';
import 'package:untitled/data/service/remote/login_remote_service.dart';
import 'package:untitled/domain/model/data/login/login_user_data.dart';
import 'package:untitled/domain/repository/login/login_repository.dart';

class LoginRepositoryImpl implements LoginRepository {
  final loginRemoteService = LoginRemoteService();

  @override
  Future<ResultEntity<UserLoginData>> userLogin(
      String userName, String pass) async {
    try {
      print("Fetch 2 Repo");
      final response = await loginRemoteService.loginUser(userName, pass);
      print("Response: ${response.statusCode}");
      if (response.statusCode == 200) {
        var a = LoginRemoteResponse.fromJson(jsonDecode(response.body))
            .toUserLoginData();
        print(a.token);
        return ResultSuccess<UserLoginData>(a);
      } else {
        return ResultError(message: response.body);
      }
    } catch (e) {
      return ResultError(message: e.toString());
    }
  }
}
