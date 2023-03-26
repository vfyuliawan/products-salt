import 'package:json_annotation/json_annotation.dart';
import 'package:untitled/data/model/article/article_response.dart';
import 'package:untitled/domain/model/data/article/article_data.dart';
import 'package:untitled/domain/model/data/login/login_user_data.dart';

part 'login_remote_response.g.dart';

@JsonSerializable()
class LoginRemoteResponse implements LoginRemoteResponseMapper {
  String? token;

  LoginRemoteResponse({this.token});

  factory LoginRemoteResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginRemoteResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoginRemoteResponseToJson(this);

  @override
  UserLoginData toUserLoginData() {
    return UserLoginData(
      token ?? "",
    );
  }
}

abstract class LoginRemoteResponseMapper {
  UserLoginData toUserLoginData();
}
