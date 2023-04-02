import 'package:json_annotation/json_annotation.dart';
import 'package:untitled/domain/model/request/questionnaire_dd_new/questionnaire_answer_request.dart';

part 'questionnaire_submit_request.g.dart';

@JsonSerializable()
class QuestionnaireSubmitRequest {
  int idSchedule;
  List<QuestionnaireAnswerRequest> listAnswer;

  QuestionnaireSubmitRequest(this.idSchedule, this.listAnswer);

  factory QuestionnaireSubmitRequest.fromJson(Map<String, dynamic> json) =>
      _$QuestionnaireSubmitRequestFromJson(json);

  Map<String, dynamic> toJson() => _$QuestionnaireSubmitRequestToJson(this);
}
