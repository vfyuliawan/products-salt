import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:untitled/domain/model/request/questionnaire_dd_new/questionnaire_answer_request.dart';
import 'package:untitled/domain/model/request/questionnaire_dd_new/questionnaire_submit_request.dart';
import 'package:untitled/presentation/pages/questioner_dd/questionnaire_dd_cubit/questionnaire_dd_cubit.dart';

class QuestionnairePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QuestionnaireState();
  }
}

class _QuestionnaireState extends State {
  Map<String, dynamic> answers = HashMap();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("Merasa sehat hari ini?"),
        TextButton(
            onPressed: () {
              doAnswer("01", true);
            },
            child: const Text("Ya")),
        TextButton(
            onPressed: () {
              doAnswer("01", false);
            },
            child: const Text("Tidak")),
        const Text("Sedang minum antibiotik?"),
        TextButton(
            onPressed: () {
              doAnswer("02", true);
            },
            child: const Text("Ya")),
        TextButton(
            onPressed: () {
              doAnswer("02", false);
            },
            child: const Text("Tidak")),
        const Text("Sedang minum obat lain untuk infeksi?"),
        TextButton(
            onPressed: () {
              doAnswer("03", true);
            },
            child: const Text("Ya")),
        TextButton(
            onPressed: () {
              doAnswer("03", false);
            },
            child: const Text("Tidak")),
        TextButton(
            onPressed: () {
              BlocProvider.of<QuestionnaireDdCubit>(context)
                  .onSubmit(1, answers);
            },
            child: const Text("Submit")),
        TextFormField(
          onChanged: (value) => print("oke"),
        )
      ],
    );
  }

  void doAnswer(String questionCode, answer) {
    setState(() {
      if (answers.containsKey(questionCode)) {
        answers[questionCode] = answer;
      } else {
        answers[questionCode] = answer;
      }
    });
  }

  // void submit(int scheduleId, Map<String, dynamic> answers) {
  //   List<QuestionnaireAnswerRequest> answerRequests = [];
  //   answers.forEach((key, value) {
  //     answerRequests.add(QuestionnaireAnswerRequest(key, value));
  //   });

  //   QuestionnaireSubmitRequest request =
  //       QuestionnaireSubmitRequest(scheduleId, answerRequests);
  // }
}
