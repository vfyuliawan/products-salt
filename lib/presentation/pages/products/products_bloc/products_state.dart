// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'products_bloc.dart';

abstract class ProductsState extends Equatable {
  const ProductsState();

  @override
  List<Object> get props => [];
}

class ProductsInitial extends ProductsState {}

class ProductsIsLoading extends ProductsState {}

class ProductsIsError extends ProductsState {
  final String? message;

  ProductsIsError({this.message});
}

class ProductsIsSuccess extends ProductsState {
  final List<ProductData>? products;
  ProductsIsSuccess({
    this.products,
  });
}
