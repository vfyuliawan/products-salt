// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:json_annotation/json_annotation.dart';
import 'package:untitled/data/model/home_bs/riwayat_response.dart';
import 'package:untitled/domain/model/data/home_bs_data/riwayat_data.dart';

part 'riwayat_remote_response.g.dart';

abstract class RiwayatRemoteResponseMapper {
  List<RiwayatDataBS> toRiwayatData();
}

@JsonSerializable()
class RiwayatRemoteResponse implements RiwayatRemoteResponseMapper {
  List<RiwayatResponseBS>? history;
  RiwayatRemoteResponse({
    this.history,
  });

  factory RiwayatRemoteResponse.fromJson(Map<String, dynamic> json) =>
      _$RiwayatRemoteResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RiwayatRemoteResponseToJson(this);

  @override
  List<RiwayatDataBS> toRiwayatData() {
    return history!.map((e) => e.toRiwayatDataBS()).toList();
  }
}
