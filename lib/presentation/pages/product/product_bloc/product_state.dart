// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'product_bloc.dart';

abstract class ProductState extends Equatable {
  const ProductState();

  @override
  List<Object> get props => [];
}

class ProductInitial extends ProductState {}

class ProductIsSuccess extends ProductState {
  final List<ProductData>? data;
  ProductIsSuccess({
    this.data,
  });
}

class ProductIsLoading extends ProductState {}

class ProductIsError extends ProductState {
  final String? message;
  ProductIsError({
    this.message,
  });
}
