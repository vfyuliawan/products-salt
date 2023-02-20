import 'package:untitled/base/result_entity.dart';
import 'package:untitled/domain/model/article/article_data.dart';
import 'package:untitled/domain/model/login/login_user_data.dart';

abstract class LoginRepository {
  Future<ResultEntity<UserLoginData>> userLogin(String userName, String pass);
}
