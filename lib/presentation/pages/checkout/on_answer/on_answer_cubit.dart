import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:untitled/domain/model/request/questioner_dd/list_answer_request.dart';
import 'package:untitled/presentation/pages/checkout/questionery_model.dart';

part 'on_answer_state.dart';

class OnAnswerCubit extends Cubit<OnAnswerState> {
  OnAnswerCubit() : super(OnAnswerInitial());

  void onAnswer(ListAnswer? answer) {
    final data = <ListAnswer>[];
    data.add(answer!);
  }
}
