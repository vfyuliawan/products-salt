// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'questionnaire_answer_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuestionnaireAnswerRequest _$QuestionnaireAnswerRequestFromJson(
        Map<String, dynamic> json) =>
    QuestionnaireAnswerRequest(
      json['questionCode'] as String,
      json['answer'],
    );

Map<String, dynamic> _$QuestionnaireAnswerRequestToJson(
        QuestionnaireAnswerRequest instance) =>
    <String, dynamic>{
      'questionCode': instance.questionCode,
      'answer': instance.answer,
    };
