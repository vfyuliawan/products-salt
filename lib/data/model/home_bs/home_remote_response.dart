// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
import 'package:untitled/data/model/home_bs/news_response.dart';
import 'package:untitled/data/model/home_bs/profile_response.dart';
import 'package:untitled/data/model/home_bs/riwayat_response.dart';
import 'package:untitled/domain/model/data/home_bs_data/home_data.dart';
import 'package:untitled/domain/model/data/home_bs_data/profile_data.dart';

part 'home_remote_response.g.dart';

@JsonSerializable()
class HomeRemoteResponse implements HomeRemoteResponseMapper {
  ProfileResponseBS? profile;
  RiwayatResponseBS? riwayat;
  List<NewsResponseBS>? news;

  HomeRemoteResponse({
    this.profile,
    this.riwayat,
    this.news,
  });

  factory HomeRemoteResponse.fromJson(Map<String, dynamic> json) =>
      _$HomeRemoteResponseFromJson(json);

  Map<String, dynamic> toJson() => _$HomeRemoteResponseToJson(this);

  @override
  HomeDataBS toHomeDataBS() {
    return HomeDataBS(
      profile!.toProfileDataBS(),
      riwayat!.toRiwayatDataBS(),
      news!.map((e) => e.toNewResponseData()).toList(),
    );
  }
}

abstract class HomeRemoteResponseMapper {
  HomeDataBS toHomeDataBS();
}
