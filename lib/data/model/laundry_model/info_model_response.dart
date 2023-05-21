// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:json_annotation/json_annotation.dart';
import 'package:untitled/domain/model/data/laundry_model/info_data.dart';
part 'info_model_response.g.dart';

@JsonSerializable()
class InfoModelResponse implements InfoModelResponseMapper {
  String? postman_id;
  String? name;
  String? schema;
  String? updatedAt;
  String? uid;
  InfoModelResponse(
    this.postman_id,
    this.name,
    this.schema,
    this.updatedAt,
    this.uid,
  );

  factory InfoModelResponse.fromJson(Map<String, dynamic> json) =>
      _$InfoModelResponseFromJson(json);

  Map<String, dynamic> toJson() => _$InfoModelResponseToJson(this);

  @override
  InfoData toInfoData() {
    return InfoData(postman_id!, name!, schema!, updatedAt!, uid!);
  }
}

abstract class InfoModelResponseMapper {
  InfoData toInfoData();
}
