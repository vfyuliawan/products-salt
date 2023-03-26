// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/domain/model/request/questioner_dd/list_answer_request.dart';
import 'package:untitled/presentation/pages/checkout/add_to_cart/add_to_cart_bloc.dart';
import 'package:untitled/presentation/pages/checkout/on_answer/on_answer_cubit.dart';
import 'package:untitled/presentation/pages/checkout/questioner_model_bloc/questioner_model_bloc.dart';
import 'package:untitled/presentation/pages/checkout/questionery_model.dart';
import 'package:velocity_x/velocity_x.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

const List<String> list = <String>['SMK', 'Two', 'Three', 'Four'];

class _CheckoutPageState extends State<CheckoutPage> {
  final _jenjangController = TextEditingController();
  String _questionCode1 = "Yes";
  String dropdownValue = list.first;
  @override
  Widget build(BuildContext context) {
    List<ListAnswer> answer = [];
    return Scaffold(
      body: _questionBuilder(),
      // child: BlocBuilder<OnAnswerCubit, OnAnswerState>(
      //   builder: (context, cartState) {
      //     if (cartState is OnAnswerIsChecked) {
      //       return Column(
      //         children: [
      //           Column(
      //             children: [
      //               "Pertanyaan 1?".text.make(),
      //               Row(
      //                 children: [
      //                   Container(
      //                     margin: EdgeInsets.all(20),
      //                     child: "Iya".text.make(),
      //                   ).onTap(() {
      //                     // answer
      //                     //     .add(ListAnswer(questionCode: "1", answer: "iya"));
      //                     // BlocProvider.of<OnAnswerCubit>(context)
      //                     //     .onAnswer(cartState.answer[index]);
      //                   }),
      //                   Container(
      //                     margin: EdgeInsets.all(20),
      //                     child: "Tidak".text.make(),
      //                   ).onTap(() {
      //                     answer.add(ListAnswer(
      //                         questionCode: "1", answer: "tidak"));
      //                   }),
      //                 ],
      //               ),
      //             ],
      //           ),
      //           Column(
      //             children: [
      //               "Pertanyaan 2?".text.make(),
      //               Row(
      //                 children: [
      //                   Container(
      //                     margin: EdgeInsets.all(20),
      //                     child: "Iya".text.make(),
      //                   ),
      //                   Container(
      //                     margin: EdgeInsets.all(20),
      //                     child: "Tidak".text.make(),
      //                   )
      //                 ],
      //               ),
      //             ],
      //           ),
      //           Column(
      //             children: [
      //               "Pertanyaan 3?".text.make(),
      //               Row(
      //                 children: [
      //                   Container(
      //                     margin: EdgeInsets.all(20),
      //                     child: "Iya".text.make(),
      //                   ),
      //                   Container(
      //                     margin: EdgeInsets.all(20),
      //                     child: "Tidak".text.make(),
      //                   )
      //                 ],
      //               ),
      //             ],
      //           )
      //         ],
      //       );
      //     }
      //     return 0.heightBox;
      //   },
      // ),

      //------------------------------------------
    );
  }

  Widget _questionBuilder() {
    final questionModel = QuestioneryModel.questions();
    return BlocBuilder<QuestionerModelBloc, QuestionerModelState>(
      builder: (context, questState) {
        if (questState is QuestionerModelIsSucces) {
          final data = questState.question;
          return ListView.builder(
            itemCount: data!.length,
            // padding: EdgeInsets.only(top: 50, bottom: 50),
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.bottomLeft,
                      child: "${data[index].question}".text.make(),
                    ),
                    5.heightBox,
                    Container(
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(20),
                            color: (data[index].answer == "iya"
                                ? Colors.blue
                                : Colors.grey),
                            child: "Iya".text.make(),
                          ).onTap(() {
                            setState(() {
                              _questionCode1 = 'no';
                            });
                            data[index] = QuestioneryModel(
                                data[index].questionCode,
                                data[index].question,
                                "iya");
                            // BlocProvider.of<QuestionerModelBloc>(context)
                            //     .add(OnAnswerQuestion(answer: "iya"));
                          }),
                          20.widthBox,
                          Container(
                            padding: EdgeInsets.all(20),
                            color: (data[index].answer == "tidak"
                                ? Colors.blue
                                : Colors.grey),
                            child: "tidak".text.make(),
                          ).onTap(() {
                            setState(() {
                              _questionCode1 = 'yes';
                            });
                            data[index] = QuestioneryModel(
                                data[index].questionCode,
                                data[index].question,
                                "tidak");
                          }),
                        ],
                      ),
                    ),
                    // _DropDownTest()
                    // _ShowBottomSheetTest(),
                    // TextFormField(
                    //   controller: _jenjangController,
                    //   keyboardType: TextInputType.text,
                    //   decoration: InputDecoration(
                    //     enabledBorder: OutlineInputBorder(
                    //       borderRadius: BorderRadius.circular(8),
                    //       borderSide: const BorderSide(
                    //         color: Color(0xffFCE9EA),
                    //       ),
                    //     ),
                    //     focusedBorder: OutlineInputBorder(
                    //       borderRadius: BorderRadius.circular(8),
                    //       borderSide: const BorderSide(
                    //         color: Color.fromARGB(255, 217, 30, 167),
                    //       ),
                    //     ),
                    //     // hintText: _jenjangController.text,
                    //     suffixIcon: const Icon(
                    //       Icons.phone_iphone_rounded,
                    //       color: Color.fromARGB(255, 217, 30, 167),
                    //     ),
                    //     filled: true,
                    //     fillColor: const Color.fromARGB(255, 252, 233, 251),
                    //   ),
                    // ),
                  ],
                ),
              );
            },
          );
        } else if (questState is QuestionerModelIsError) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        return Center(child: "kosong".text.make());
      },
    );
  }

  Widget _DropDownTest() {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }

  Widget _ShowBottomSheetTest() {
    return Center(
        child: ElevatedButton(
      child: const Text('showModalBottomSheet'),
      onPressed: () {
        showModalBottomSheet<void>(
          context: context,
          builder: (BuildContext context) {
            return Container(
              height: 200,
              color: Colors.amber,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const Text('SMK'),
                    ElevatedButton(
                      child: const Text('SMK'),
                      onPressed: () {
                        setState(() {
                          _jenjangController.text = "SMK";
                        });
                        Navigator.pop(context);
                      },
                    ),
                    const Text('D3'),
                    ElevatedButton(
                      child: const Text('D3'),
                      onPressed: () {
                        setState(() {
                          _jenjangController.text = "D3";
                        });
                        Navigator.pop(context);
                      },
                    ),
                    const Text('S1'),
                    ElevatedButton(
                      child: const Text('S 1'),
                      onPressed: () {
                        setState(() {
                          _jenjangController.text = "S1";
                        });
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    ));
  }
}
