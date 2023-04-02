import 'package:json_annotation/json_annotation.dart';
import 'package:untitled/domain/model/data/home_bs_data/riwayat_data.dart';

part 'riwayat_response.g.dart';

@JsonSerializable()
class RiwayatResponseBS implements RiwayatResponseBSMapper {
  String? date;
  double? price;
  double? weight;
  double? point;
  RiwayatResponseBS({
    this.date,
    this.price,
    this.weight,
    this.point,
  });

  factory RiwayatResponseBS.fromJson(Map<String, dynamic> json) =>
      _$RiwayatResponseBSFromJson(json);

  Map<String, dynamic> toJson() => _$RiwayatResponseBSToJson(this);

  @override
  RiwayatDataBS toRiwayatDataBS() {
    return RiwayatDataBS(
      date ?? "",
      price ?? 0,
      weight ?? 0,
      point ?? 0,
    );
  }
}

abstract class RiwayatResponseBSMapper {
  RiwayatDataBS toRiwayatDataBS();
}
