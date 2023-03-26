// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'questioner_model_bloc.dart';

abstract class QuestionerModelState extends Equatable {
  const QuestionerModelState();

  @override
  List<Object> get props => [];
}

class QuestionerModelInitial extends QuestionerModelState {}

class QuestionerModelIsLoading extends QuestionerModelState {}

class QuestionerModelIsSucces extends QuestionerModelState {
  List<QuestioneryModel>? question;
  QuestionerModelIsSucces({
    this.question,
  });
}

class QuestionerModelIsError extends QuestionerModelState {
  String? message;
  QuestionerModelIsError({
    this.message,
  });
}
