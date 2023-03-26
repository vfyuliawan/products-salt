// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'questioner_model_bloc.dart';

abstract class QuestionerModelEvent extends Equatable {
  const QuestionerModelEvent();

  @override
  List<Object> get props => [];
}

class FetchQuestionModel extends QuestionerModelEvent {}

class OnAnswerQuestion extends QuestionerModelEvent {
  String? questionCode;
  String? question;
  dynamic answer;
  OnAnswerQuestion({
    this.questionCode,
    this.question,
    this.answer,
  });
}
