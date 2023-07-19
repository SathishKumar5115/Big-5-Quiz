import 'package:flutter/material.dart';

import 'question.dart';
import 'answer.dart';

class quiz extends StatelessWidget {
  final List<Map<String, Object>>? questions;
  final List<Map<String, Object>>? answers;
  final int questionIndex;
  final Function qanda;

  quiz(
      {@required this.questions,
      required this.qanda,
      @required this.answers,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/3.png"), fit: BoxFit.cover),
        ),
        child: Column(children: [
          question(
            questions![questionIndex]['qt'] as String,
          ),
          ...(answers as List<Map<String, Object>>).map((at) {
            return answer(
                () => qanda(at['s'] as int, questionIndex), at['a'] as String);
          }).toList()
        ])); /*Column(

        /*//<widget> generic type ex:for type in lists but need not be used since dart has type inference
        children: /*const*/ [*/
        //we can use elementAt()
        question(
      questions![questionIndex]['qt'] as String,
    );
    /**adding three dots (spread operator) take a list and pull the values in them and add them to outer list as seperate values*/
    /*...(answers as List<Map<String, Object>>).map((at) {
            return answer(
                () => qanda(at['s'], questionIndex), at['a'] as String);
          }).toList()*/*/
  }
}
