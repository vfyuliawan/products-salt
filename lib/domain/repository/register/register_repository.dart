import 'package:untitled/base/result_entity.dart';
import 'package:untitled/domain/model/data/register/register_user_data.dart';

abstract class RegisterRepository {
  Future<ResultEntity<UserRegisterData>> registerUser(
      String email, String username, String password);
}
