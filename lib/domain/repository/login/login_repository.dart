import 'package:untitled/base/result_entity.dart';
import 'package:untitled/domain/model/data/article/article_data.dart';
import 'package:untitled/domain/model/data/login/login_user_data.dart';

abstract class LoginRepository {
  Future<ResultEntity<UserLoginData>> userLogin(String userName, String pass);
}
