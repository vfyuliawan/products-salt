// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_collection_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductCollection _$ProductCollectionFromJson(Map<String, dynamic> json) =>
    ProductCollection(
      products: (json['products'] as List<dynamic>?)
          ?.map((e) =>
              ProductCollectionRemote.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProductCollectionToJson(ProductCollection instance) =>
    <String, dynamic>{
      'products': instance.products,
    };
