import 'package:untitled/base/base_response_cc/base_remote_response.dart';
import 'package:untitled/base/result_entity.dart';
import 'package:untitled/domain/model/data/login/login_user_data.dart';
import 'package:untitled/domain/model/request/login_cc/login_request_cc.dart';

abstract class LoginRepositoryCC {
  Future<ResultEntity<UserLoginData>> submitLogin(LoginRequest request);
}
