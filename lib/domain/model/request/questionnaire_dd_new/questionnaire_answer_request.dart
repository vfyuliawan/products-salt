import 'package:json_annotation/json_annotation.dart';

part 'questionnaire_answer_request.g.dart';

@JsonSerializable()
class QuestionnaireAnswerRequest {
  String questionCode;
  dynamic answer;

  QuestionnaireAnswerRequest(this.questionCode, this.answer);

  factory QuestionnaireAnswerRequest.fromJson(Map<String, dynamic> json) =>
      _$QuestionnaireAnswerRequestFromJson(json);

  Map<String, dynamic> toJson() => _$QuestionnaireAnswerRequestToJson(this);
}
