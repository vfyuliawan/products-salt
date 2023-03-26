// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:untitled/domain/model/request/questioner_dd/list_answer_request.dart';

class Questioner {
  String? idSchedule;
  List<ListAnswer> listAnswer;
  Questioner({
    this.idSchedule,
    required this.listAnswer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idSchedule': idSchedule,
      'listAnswer': listAnswer.map((x) => x.toMap()).toList(),
    };
  }

  factory Questioner.fromMap(Map<String, dynamic> map) {
    return Questioner(
      idSchedule:
          map['idSchedule'] != null ? map['idSchedule'] as String : null,
      listAnswer: List.from(
        (map['listAnswer']).map<ListAnswer>(
          (x) => ListAnswer.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory Questioner.fromJson(String source) =>
      Questioner.fromMap(json.decode(source) as Map<String, dynamic>);
}
