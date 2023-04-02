// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'questionnaire_submit_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuestionnaireSubmitRequest _$QuestionnaireSubmitRequestFromJson(
        Map<String, dynamic> json) =>
    QuestionnaireSubmitRequest(
      json['idSchedule'] as int,
      (json['listAnswer'] as List<dynamic>)
          .map((e) =>
              QuestionnaireAnswerRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$QuestionnaireSubmitRequestToJson(
        QuestionnaireSubmitRequest instance) =>
    <String, dynamic>{
      'idSchedule': instance.idSchedule,
      'listAnswer': instance.listAnswer,
    };
