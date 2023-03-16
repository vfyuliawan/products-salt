import 'dart:convert';

import 'package:untitled/base/result_entity.dart';
import 'package:untitled/data/model/register/register_remote_response.dart';
import 'package:untitled/data/service/remote/register_remote_service.dart';
import 'package:untitled/domain/model/data/login/login_user_data.dart';
import 'package:untitled/domain/model/data/register/register_user_data.dart';
import 'package:untitled/domain/repository/register/register_repository.dart';

class RegisterRepositoryImpl implements RegisterRepository {
  final registerRemoteService = RegisterRemoteService();
  @override
  Future<ResultEntity<UserRegisterData>> registerUser(
      String email, String username, String password) async {
    try {
      print("Fetch 2 Repo");
      final response =
          await registerRemoteService.registerUser(email, username, password);
      print("Response: ${response.statusCode}");
      if (response.statusCode == 200) {
        var a = RegisterRemoteResponse.fromJson(jsonDecode(response.body))
            .toUserRegisterData();
        // print(a.id);
        return ResultSuccess<UserRegisterData>(a);
      } else {
        return ResultError(message: response.body);
      }
    } catch (e) {
      return ResultError(message: e.toString());
    }
  }
}
