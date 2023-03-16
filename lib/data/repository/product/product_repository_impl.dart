import 'dart:convert';

import 'package:untitled/data/model/product/product_collection_remote_response.dart';
import 'package:untitled/data/model/product/product_collection_response.dart';
import 'package:untitled/data/service/remote/product/product_remote_service.dart';
import 'package:untitled/domain/base/token_header_request.dart';
import 'package:untitled/domain/model/data/product/product_data.dart';
import 'package:untitled/domain/base/authentication_header_request.dart.dart';
import 'package:untitled/base/result_entity.dart';
import 'package:untitled/domain/repository/product/product_repository.dart';

class ProductRepositoryImpl implements ProductRepository {
  final productService = ProductRemoteService();

  @override
  Future<ResultEntity<List<ProductData>>> fetchProduct(
      AuthenticationHeaderRequest header) async {
    try {
      final response = await productService.fetchProduct(header);
      if (response.statusCode == 200) {
        final data = ProductCollection.fromJson(
                    jsonDecode('{"products" : ${response.body}}'))
                .products
                ?.map((e) => e.toProductData())
                .toList() ??
            List.empty();

        //cara dua
        final data2 = (jsonDecode(response.body) as List)
            .map((e) => ProductCollectionRemote.fromJson(e).toProductData())
            .toList();
        print(response.body);

        return ResultSuccess<List<ProductData>>(data);
      } else {
        return ResultError(message: "Gagal Fetch Data Product");
      }
    } catch (error) {
      print(error);
      return ResultError(message: error.toString());
    }
  }

  @override
  Future<ResultEntity<ProductData>> fetchDetailProduct(
      AuthenticationHeaderRequest header, int id) async {
    // TODO: implement fetchDetailProduct
    try {
      final response = await productService.fetchDetailProduct(header, id);
      if (response.statusCode == 200) {
        final data = ProductCollectionRemote.fromJson(jsonDecode(response.body))
            .toProductData();
        print(response.body);
        print(data);
        return ResultSuccess<ProductData>(data);
      } else {
        return ResultError<ProductData>(message: "Tidak ada data");
      }
    } catch (e) {
      return ResultError(message: e.toString());
    }
  }
}
