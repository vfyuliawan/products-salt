part of 'add_to_cart_bloc.dart';

abstract class AddToCartEvent extends Equatable {
  const AddToCartEvent();

  @override
  List<Object> get props => [];
}

class OrderRequest extends AddToCartEvent {
  // final double totalPrice;
  final List<ListAnswer> quest;
  OrderRequest(
    // this.totalPrice,
    this.quest,
  );
}
