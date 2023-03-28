import 'package:untitled/base/result_entity.dart';
import 'package:untitled/domain/model/data/article/article_data.dart';
import 'package:untitled/domain/model/data/login/login_user_data.dart';

abstract class ForgotPassRepositoryDD {
  Future<ResultEntity> submitForgotPassword(String email);
}
