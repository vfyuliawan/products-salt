// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

import 'package:untitled/domain/model/data/register/register_user_data.dart';

part 'register_remote_response.g.dart';

@JsonSerializable()
class RegisterRemoteResponse implements RegisterRemoteResponseMapper {
  int? id;
  RegisterRemoteResponse({
    this.id,
  });

  factory RegisterRemoteResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterRemoteResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterRemoteResponseToJson(this);

  @override
  UserRegisterData toUserRegisterData() {
    return UserRegisterData(id: id!);
  }
}

abstract class RegisterRemoteResponseMapper {
  UserRegisterData toUserRegisterData();
}
