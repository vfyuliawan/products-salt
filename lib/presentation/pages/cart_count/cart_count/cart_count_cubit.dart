import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'cart_count_state.dart';

class CartCountCubit extends Cubit<CartCountState> {
  CartCountCubit() : super(CartCountInitial());
}
