// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:untitled/base/result_entity.dart';
import 'package:untitled/domain/base/authentication_header_request.dart.dart';
import 'package:untitled/domain/base/token_header_request.dart';
import 'package:untitled/domain/model/data/product/product_data.dart';
import 'package:untitled/domain/repository/product/product_repository.dart';
import 'package:untitled/presentation/pages/product/product_bloc/product_bloc.dart';

part 'product_detail_state.dart';

class ProductDetailCubit extends Cubit<ProductDetailState> {
  final ProductRepository repository;
  ProductDetailCubit(
    this.repository,
  ) : super(ProductDetailInitial());

  Future<void> fetchDetailProduct(String header, int id) async {
    print("fetch detail article");
    emit(ProductDetailIsLoading());
    final response = await repository.fetchDetailProduct(
        AuthenticationHeaderRequest(header), id);
    if (response is ResultSuccess) {
      emit(ProductDetailIsSuccess(data: (response as ResultSuccess).data));
    } else if (response is ResultError) {
      emit(
        ProductDetailIsFailed((response as ResultError).message),
      );
    }
  }
}
