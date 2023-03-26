// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:json_annotation/json_annotation.dart';
import 'package:untitled/domain/base/authentication_header_request.dart.dart';

part 'trash_submit_request.g.dart';

@JsonSerializable()
// class TrashSubmitRequest extends BaseRequestHeader {
//   int plastic;
//   int glass;
//   int steel;
//   int pepper;
//   bool isPickup;

//   TrashSubmitRequest(this.plastic, this.glass, this.steel, this.pepper,
//       this.isPickup, String accesToken)
//       : super(accesToken);

//   factory TrashSubmitRequest.fromJson(Map<String, dynamic> json) =>
//       _$TrashSubmitRequestFromJson(json);

//   Map<String, dynamic> toJson() => _$TrashSubmitRequestToJson(this);
// }

class TrashSubmitRequest {
  int plastic;
  int glass;
  int steel;
  int pepper;
  bool isPickup;

  TrashSubmitRequest(
    this.plastic,
    this.glass,
    this.steel,
    this.pepper,
    this.isPickup,
  );

  factory TrashSubmitRequest.fromJson(Map<String, dynamic> json) =>
      _$TrashSubmitRequestFromJson(json);

  Map<String, dynamic> toJson() => _$TrashSubmitRequestToJson(this);
}
