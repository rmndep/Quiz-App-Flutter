import 'package:flutter/material.dart';
import 'answer_button.dart';
import 'data/ques.dart';

class Question extends StatefulWidget {
  const Question({super.key});

  @override
  State<Question> createState() => _QuestionState();
}   

class _QuestionState extends State<Question> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];
    return SizedBox(
  width: double.infinity,
  child: Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(currentQuestion.text,style:TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold)),
        SizedBox(height: 30),
        AnswerButton(answerText: currentQuestion.answers[0], onTap: (){}),
        SizedBox(height: 30),
        AnswerButton(answerText: currentQuestion.answers[1], onTap: (){}),
        SizedBox(height: 30),
        AnswerButton(answerText: currentQuestion.answers[2], onTap: (){}),
        SizedBox(height: 30),
        AnswerButton(answerText: currentQuestion.answers[3], onTap: (){}),
      ],
    ),
  ),
);
  }
}
