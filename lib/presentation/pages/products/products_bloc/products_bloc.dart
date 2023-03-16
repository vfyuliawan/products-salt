// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:untitled/base/result_entity.dart';
import 'package:untitled/data/utilities/commons.dart';
import 'package:untitled/domain/base/authentication_header_request.dart.dart';

import 'package:untitled/domain/model/data/product/product_data.dart';
import 'package:untitled/domain/repository/product/product_repository.dart';

part 'products_event.dart';
part 'products_state.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  ProductRepository repository;
  ProductsBloc(
    this.repository,
  ) : super(ProductsInitial()) {
    on<ProductsEvent>((event, emit) {});
    on<FetchProducts>(
      ((event, emit) async {
        emit(ProductsIsLoading());
        final response = await repository.fetchProduct(
          AuthenticationHeaderRequest("event.accessToken!"),
        );
        if (response is ResultSuccess) {
          //TODO: emit ProductsIsSuccess
          emit(
            ProductsIsSuccess(products: (response as ResultSuccess).data),
          );
        } else if (response is ResultError) {
          //TODO: emit ProductIS Failed
          emit(
            ProductsIsError(message: (response as ResultError).message),
          );
        }
      }),
    );
  }
}
