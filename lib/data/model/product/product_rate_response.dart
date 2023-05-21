// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
import 'package:untitled/domain/model/data/product/product_rating_data.dart';
part 'product_rate_response.g.dart';

@JsonSerializable()
class ProductRateResponse implements ProductRateResponseMapper {
  double? rate;
  int? count;
  ProductRateResponse({
    this.rate,
    this.count,
  });

  factory ProductRateResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductRateResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProductRateResponseToJson(this);

  @override
  ProductRatingData toRatingData() => ProductRatingData(rate ?? 0, count ?? 0);
}

abstract class ProductRateResponseMapper {
  ProductRatingData toRatingData();
}
