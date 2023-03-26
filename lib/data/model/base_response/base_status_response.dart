// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:json_annotation/json_annotation.dart';

part 'base_status_response.g.dart';

@JsonSerializable()
class BaseStatusResponse {
  int? code;
  String? message;
  BaseStatusResponse({
    this.code,
    this.message,
  });

  factory BaseStatusResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseStatusResponseFromJson(json);

  Map<String, dynamic> toJson() => _$BaseStatusResponseToJson(this);
}
