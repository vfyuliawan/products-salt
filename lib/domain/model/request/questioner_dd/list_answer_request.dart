import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class ListAnswer {
  String? questionCode;
  String? answer;
  ListAnswer({
    this.questionCode,
    this.answer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'questionCode': questionCode,
      'answer': answer,
    };
  }

  factory ListAnswer.fromMap(Map<String, dynamic> map) {
    return ListAnswer(
      questionCode:
          map['questionCode'] != null ? map['questionCode'] as String : null,
      answer: map['answer'] != null ? map['answer'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ListAnswer.fromJson(String source) =>
      ListAnswer.fromMap(json.decode(source) as Map<String, dynamic>);
}
