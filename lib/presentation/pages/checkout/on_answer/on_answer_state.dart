// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'on_answer_cubit.dart';

abstract class OnAnswerState extends Equatable {
  const OnAnswerState();

  @override
  List<Object> get props => [];
}

class OnAnswerInitial extends OnAnswerState {}

class OnAnswerIsChecked extends OnAnswerState {
  final List<QuestioneryModel>? model;
  OnAnswerIsChecked({
    this.model,
  });
}
