// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_remote_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseRemoteResponseCC<Data> _$BaseRemoteResponseCCFromJson<Data>(
  Map<String, dynamic> json,
  Data Function(Object? json) fromJsonData,
) =>
    BaseRemoteResponseCC<Data>(
      status: json['status'] == null
          ? null
          : StatusResponse.fromJson(json['status'] as Map<String, dynamic>),
      data: _$nullableGenericFromJson(json['data'], fromJsonData),
    );

Map<String, dynamic> _$BaseRemoteResponseCCToJson<Data>(
  BaseRemoteResponseCC<Data> instance,
  Object? Function(Data value) toJsonData,
) =>
    <String, dynamic>{
      'status': instance.status,
      'data': _$nullableGenericToJson(instance.data, toJsonData),
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);
