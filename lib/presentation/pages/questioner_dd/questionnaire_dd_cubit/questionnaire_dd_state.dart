part of 'questionnaire_dd_cubit.dart';

abstract class QuestionnaireDdState extends Equatable {
  const QuestionnaireDdState();

  @override
  List<Object> get props => [];
}

class QuestionnaireDdInitial extends QuestionnaireDdState {}

class QuestionnaireDdIsSuccess extends QuestionnaireDdState {
  final String message;

  QuestionnaireDdIsSuccess(this.message);
}

class QuestionnaireDdIsFailed extends QuestionnaireDdState {
  final String message;

  QuestionnaireDdIsFailed(this.message);
}

class QuestionnaireDdIsError extends QuestionnaireDdState {}
