// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

import 'package:untitled/data/model/product/product_collection_remote_response.dart';
import 'package:untitled/domain/model/data/product/product_data.dart';

part 'product_collection_response.g.dart';

abstract class ProductCollectionMapper {
  List<ProductData> toProductData();
}

@JsonSerializable()
class ProductCollection implements ProductCollectionMapper {
  List<ProductCollectionRemote>? products;
  ProductCollection({
    this.products,
  });

  factory ProductCollection.fromJson(Map<String, dynamic> json) =>
      _$ProductCollectionFromJson(json);

  Map<String, dynamic> toJson() => _$ProductCollectionToJson(this);

  @override
  List<ProductData> toProductData() {
    return products?.map((e) => e.toProductData()).toList() ?? List.empty();
  }
}
