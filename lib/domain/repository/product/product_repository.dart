import 'package:untitled/base/result_entity.dart';
import 'package:untitled/domain/base/authentication_header_request.dart.dart';
import 'package:untitled/domain/base/token_header_request.dart';
import 'package:untitled/domain/model/data/product/product_data.dart';

abstract class ProductRepository {
  Future<ResultEntity<List<ProductData>>> fetchProduct(
      AuthenticationHeaderRequest header);
  Future<ResultEntity<ProductData>> fetchDetailProduct(
      AuthenticationHeaderRequest header, int id);
}
