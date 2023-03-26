import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:untitled/presentation/pages/checkout/questionery_model.dart';

part 'questioner_model_event.dart';
part 'questioner_model_state.dart';

class QuestionerModelBloc
    extends Bloc<QuestionerModelEvent, QuestionerModelState> {
  QuestionerModelBloc() : super(QuestionerModelInitial()) {
    on<FetchQuestionModel>((event, emit) {
      final question = QuestioneryModel.questions();
      if (question.isNotEmpty) {
        emit(QuestionerModelIsSucces(question: QuestioneryModel.questions()));
      } else {
        emit(QuestionerModelIsError(message: "tidak ada data"));
      }
    });
    on<OnAnswerQuestion>((event, emit) {
      emit(QuestionerModelIsLoading());
      final questioner = QuestioneryModel.questions()[0];
      questioner.copyWith(answer: event.answer);
    });
  }
}
