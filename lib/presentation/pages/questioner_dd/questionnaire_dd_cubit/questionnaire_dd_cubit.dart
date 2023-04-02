// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:http/http.dart';
import 'package:untitled/base/result_entity.dart';
import 'package:untitled/data/utilities/commons.dart';
import 'package:untitled/domain/base/authentication_header_request.dart.dart';
import 'package:untitled/domain/model/request/questionnaire_dd_new/questionnaire_answer_request.dart';
import 'package:untitled/domain/model/request/questionnaire_dd_new/questionnaire_submit_request.dart';

import 'package:untitled/domain/repository/questionery/questionery_repository.dart';

part 'questionnaire_dd_state.dart';

class QuestionnaireDdCubit extends Cubit<QuestionnaireDdState> {
  QuestionaireRepository repository;
  QuestionnaireDdCubit(
    this.repository,
  ) : super(QuestionnaireDdInitial());

  Future onSubmit(int scheduleId, Map<String, dynamic> answers) async {
    List<QuestionnaireAnswerRequest> answerRequest = [];
    answers.forEach((key, value) {
      answerRequest.add(QuestionnaireAnswerRequest(key, value));
    });
    QuestionnaireSubmitRequest request =
        QuestionnaireSubmitRequest(scheduleId, answerRequest);

    print(jsonEncode(request.toJson()));
    var accesToken = Commons().getUid();
    AuthenticationHeaderRequest header =
        AuthenticationHeaderRequest("accesToken");
    final response = await repository.postQuestioner(header, request);
    if (response is ResultSuccess) {
      if (response.data == null) {
        emit(QuestionnaireDdIsSuccess(""));
      }
    } else if (response is ResultError) {
      emit(QuestionnaireDdIsFailed(response.message!));
    }
  }
}
