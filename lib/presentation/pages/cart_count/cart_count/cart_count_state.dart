part of 'cart_count_cubit.dart';

abstract class CartCountState extends Equatable {
  const CartCountState();

  @override
  List<Object> get props => [];
}

class CartCountInitial extends CartCountState {}

class CartCountIsFailed extends CartCountState {}

class CartCountIsSuccess extends CartCountState {}

class CartCountIsError extends CartCountState {}
