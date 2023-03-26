// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
import 'package:untitled/domain/base/base_response_status.dart';

part 'base_response_status.g.dart';

@JsonSerializable()
class BaseResponseStatus implements BaseResponseStatusMapper {
  int? code;
  String? message;
  BaseResponseStatus({
    this.code,
    this.message,
  });

  factory BaseResponseStatus.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseStatusFromJson(json);

  Map<String, dynamic> toJson() => _$BaseResponseStatusToJson(this);

  @override
  BaseEntitiResponseStatus toBaseEntitiResponseStatus() {
    return BaseEntitiResponseStatus(code!, message ?? "");
  }
}

abstract class BaseResponseStatusMapper {
  BaseEntitiResponseStatus toBaseEntitiResponseStatus();
}
