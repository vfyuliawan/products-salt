// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:untitled/domain/model/request/questioner_dd/list_answer_request.dart';
import 'package:untitled/domain/model/request/questioner_dd/questioner_dd_request.dart';

part 'add_to_cart_event.dart';
part 'add_to_cart_state.dart';

class Questionery {
  int? questionCode;
  String? answer;
  Questionery({
    this.questionCode,
    this.answer,
  });
}

class AddToCartBloc extends Bloc<AddToCartEvent, AddToCartState> {
  AddToCartBloc() : super(AddToCartInitial()) {
    on<OrderRequest>((event, emit) {
      Questionery question = Questionery(questionCode: 1, answer: "tidak");
      emit(AddToCartIsLoading());

      List<ListAnswer> questions = [
        ListAnswer(questionCode: "1", answer: "ya"),
        ListAnswer(questionCode: "2", answer: "ya"),
        ListAnswer(questionCode: "3", answer: "tidak"),
        ListAnswer(questionCode: "4", answer: "ya"),
        ListAnswer(questionCode: "5", answer: "tidak"),
      ];
      Questioner quest = Questioner(
        listAnswer: questions,
        idSchedule: "1",
      );
      // final result =
    });
  }
}
