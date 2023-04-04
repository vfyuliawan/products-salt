// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:json_annotation/json_annotation.dart';

part 'register_request_dd.g.dart';

@JsonSerializable()
class RegisterRequestDD {
  String? name;
  String? placeOfBirth;
  String? dateOfBirth;
  String? gender;
  int? jobId;
  int? unitId;
  String? phone;
  String? email;
  String? address;
  int? subDistrictId;
  int? villageId;
  String? postalCode;
  String? password;
  String? passwordConfirmation;

  RegisterRequestDD({
    this.name,
    this.placeOfBirth,
    this.dateOfBirth,
    this.gender,
    this.jobId,
    this.unitId,
    this.phone,
    this.email,
    this.address,
    this.subDistrictId,
    this.villageId,
    this.postalCode,
    this.password,
    this.passwordConfirmation,
  });

  factory RegisterRequestDD.fromJson(Map<String, dynamic> json) =>
      _$RegisterRequestDDFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterRequestDDToJson(this);
}
