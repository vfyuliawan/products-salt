import 'package:json_annotation/json_annotation.dart';
import 'package:untitled/domain/model/data/list_jobs_cc/listjobs_cc_data.dart';
part 'list_jobs_remote_response.g.dart';

@JsonSerializable()
class ListJobRemoteResponse implements ListJobRemoteResponseMapper {
  String logo;
  String position;
  String company;
  String address;
  String createdDate;
  int id;
  ListJobRemoteResponse(
    this.logo,
    this.position,
    this.company,
    this.address,
    this.createdDate,
    this.id,
  );

  factory ListJobRemoteResponse.fromJson(Map<String, dynamic> json) =>
      _$ListJobRemoteResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ListJobRemoteResponseToJson(this);

  @override
  ListJobsCcData toListJobData() {
    return ListJobsCcData(
      logo,
      position,
      company,
      address,
      createdDate,
      id,
    );
  }
}

abstract class ListJobRemoteResponseMapper {
  ListJobsCcData toListJobData();
}
