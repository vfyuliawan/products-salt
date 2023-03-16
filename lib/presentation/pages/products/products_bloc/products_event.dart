// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'products_bloc.dart';

abstract class ProductsEvent extends Equatable {
  const ProductsEvent();

  @override
  List<Object> get props => [];
}

class FetchProducts extends ProductsEvent {
  final String? accessToken;
  FetchProducts({
    this.accessToken,
  });
}
