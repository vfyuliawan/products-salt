import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:untitled/domain/model/request/questioner_dd/questioner_dd_request.dart';

part 'checkout_state.dart';

class CheckoutCubit extends Cubit<CheckoutState> {
  CheckoutCubit() : super(CheckoutInitial());

  void addCheckBox(Questioner quest) {
    final data = <Questioner>[];
    if ((state as CheckOutIsChecked).model.isNotEmpty) {
      data.addAll((state as CheckOutIsChecked).model);
    }
    data.add(quest);
    emit(CheckOutIsChecked(data));
  }

  void remove(Questioner quest) {
    final data = (state as CheckOutIsChecked).model;
    data.remove(quest);
    emit(CheckOutIsChecked(data));
  }
}
