// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_request_dd.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterRequestDD _$RegisterRequestDDFromJson(Map<String, dynamic> json) =>
    RegisterRequestDD(
      name: json['name'] as String?,
      placeOfBirth: json['placeOfBirth'] as String?,
      dateOfBirth: json['dateOfBirth'] as String?,
      gender: json['gender'] as String?,
      jobId: json['jobId'] as int?,
      unitId: json['unitId'] as int?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      address: json['address'] as String?,
      subDistrictId: json['subDistrictId'] as int?,
      villageId: json['villageId'] as int?,
      postalCode: json['postalCode'] as String?,
      password: json['password'] as String?,
      passwordConfirmation: json['passwordConfirmation'] as String?,
    );

Map<String, dynamic> _$RegisterRequestDDToJson(RegisterRequestDD instance) =>
    <String, dynamic>{
      'name': instance.name,
      'placeOfBirth': instance.placeOfBirth,
      'dateOfBirth': instance.dateOfBirth,
      'gender': instance.gender,
      'jobId': instance.jobId,
      'unitId': instance.unitId,
      'phone': instance.phone,
      'email': instance.email,
      'address': instance.address,
      'subDistrictId': instance.subDistrictId,
      'villageId': instance.villageId,
      'postalCode': instance.postalCode,
      'password': instance.password,
      'passwordConfirmation': instance.passwordConfirmation,
    };
