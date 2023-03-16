// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'product_detail_cubit.dart';

abstract class ProductDetailState extends Equatable {
  const ProductDetailState();

  @override
  List<Object> get props => [];
}

class ProductDetailInitial extends ProductDetailState {}

class ProductDetailIsFailed extends ProductDetailState {
  String? message;
  ProductDetailIsFailed(
    this.message,
  );
}

class ProductDetailIsLoading extends ProductDetailState {}

class ProductDetailIsSuccess extends ProductDetailState {
  final ProductData? data;
  ProductDetailIsSuccess({
    this.data,
  });
}
