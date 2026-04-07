import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
 const AnswerButton( {super.key, required this.onTap, required this.answerText});
    final String answerText;

final void Function() onTap;
    @override
    Widget build(BuildContext context) {
      return SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: Text(answerText),
        ),
      );
    }
}