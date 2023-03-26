// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
import 'package:untitled/domain/model/data/home_bs_data/profile_data.dart';

part 'profile_response.g.dart';

@JsonSerializable()
class ProfileResponseBS implements ProfileResponseBSMapper {
  String? image;
  String? username;
  double? balance;
  ProfileResponseBS({
    this.image,
    this.username,
    this.balance,
  });

  factory ProfileResponseBS.fromJson(Map<String, dynamic> json) =>
      _$ProfileResponseBSFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileResponseBSToJson(this);

  @override
  ProfileDataBS toProfileDataBS() {
    return ProfileDataBS(image ?? "", username ?? "", balance ?? 0);
  }
}

abstract class ProfileResponseBSMapper {
  ProfileDataBS toProfileDataBS();
}
