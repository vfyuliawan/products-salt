// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:untitled/base/result_entity.dart';
import 'package:untitled/data/utilities/commons.dart';
import 'package:untitled/domain/base/authentication_header_request.dart.dart';

import 'package:untitled/domain/model/data/product/product_data.dart';
import 'package:untitled/domain/repository/product/product_repository.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductRepository productRepository;
  ProductBloc(
    this.productRepository,
  ) : super(ProductInitial()) {
    on<FetchAllProduct>((event, emit) async {
      emit(ProductIsLoading());
      // final getToken = Commons().getUid();
      final response = await productRepository
          .fetchProduct(AuthenticationHeaderRequest("token"));
      if (response is ResultSuccess) {
        emit(ProductIsSuccess(data: (response as ResultSuccess).data));
      } else {
        emit(ProductIsError(message: (response as ResultError).message));
      }
    });
  }
}
