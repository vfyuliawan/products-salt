// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
import 'package:untitled/domain/model/data/pickup/pickup_data.dart';

part 'pickup_submit_remote_response.g.dart';

@JsonSerializable()
class PickupSubmitRemoteResponse {
  int? plastic;
  int? glass;
  int? steel;
  int? pepper;
  bool? isPickup;
  PickupSubmitRemoteResponse({
    this.plastic,
    this.glass,
    this.steel,
    this.pepper,
    this.isPickup,
  });

  factory PickupSubmitRemoteResponse.fromJson(Map<String, dynamic> json) =>
      _$PickupSubmitRemoteResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PickupSubmitRemoteResponseToJson(this);

  //menjembatani Remoete Response ke Data
  PickupData toPicUpdata() {
    //defaultvalue
    return PickupData(
        plastic ?? 0, glass ?? 0, steel ?? 0, pepper ?? 0, isPickup ?? false);
  }
}
