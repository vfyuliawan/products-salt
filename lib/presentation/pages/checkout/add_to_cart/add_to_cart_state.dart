// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'add_to_cart_bloc.dart';

abstract class AddToCartState extends Equatable {
  const AddToCartState();

  @override
  List<Object> get props => [];
}

class AddToCartInitial extends AddToCartState {}

class AddToCartIsLoading extends AddToCartState {}

class AddToCartIsSuccess extends AddToCartState {
  final String? message;
  AddToCartIsSuccess({
    this.message,
  });
}

class AddToCartIsError extends AddToCartState {
  final String? message;
  AddToCartIsError({
    this.message,
  });
}
