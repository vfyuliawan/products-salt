// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

import 'package:untitled/data/model/product/product_rate_response.dart';
import 'package:untitled/domain/model/data/product/product_data.dart';
import 'package:untitled/domain/model/data/product/product_rating_data.dart';

part 'product_collection_remote_response.g.dart';

abstract class ProductCollectionRemoteMapper {
  ProductData toProductData();
}

@JsonSerializable()
class ProductCollectionRemote implements ProductCollectionRemoteMapper {
  int? id;
  String? title;
  double? price;
  String? description;
  String? category;
  String? image;
  ProductRateResponse? rating;

  ProductCollectionRemote({
    this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.image,
    this.rating,
  });

  factory ProductCollectionRemote.fromJson(Map<String, dynamic> json) =>
      _$ProductCollectionRemoteFromJson(json);

  Map<String, dynamic> toJson() => _$ProductCollectionRemoteToJson(this);

  @override
  ProductData toProductData() {
    // TODO: implement toProductData
    return ProductData(
      id ?? 0,
      title ?? "",
      price ?? 0,
      description ?? "",
      category ?? "",
      image ?? "",
      rating?.toRatingData() ?? ProductRatingData(0, 0),
    );
  }
}
