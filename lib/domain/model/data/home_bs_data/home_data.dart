// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:untitled/domain/model/data/home_bs_data/news_data.dart';
import 'package:untitled/domain/model/data/home_bs_data/profile_data.dart';
import 'package:untitled/domain/model/data/home_bs_data/riwayat_data.dart';

class HomeDataBS {
  ProfileDataBS profile;
  RiwayatDataBS riwayat;
  List<NewsDataBS> news;
  HomeDataBS(
    this.profile,
    this.riwayat,
    this.news,
  );
}
