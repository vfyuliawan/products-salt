import 'package:untitled/base/result_entity.dart';
import 'package:untitled/domain/base/authentication_header_request.dart.dart';
import 'package:untitled/domain/model/request/register_dd/register_request_dd.dart';

abstract class RegisterRepositoryDD {
  Future<ResultEntity> submitRegister(
      RegisterRequestDD request, AuthenticationHeaderRequest headerRequest);
}
