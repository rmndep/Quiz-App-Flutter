import 'package:flutter/material.dart';
import 'start_screen.dart';
import 'question.dart';
class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
//    Widget? activeScreen;

//    @override
//    void initState(){
//     activeScreen = StartScreen(switchScreen);
//      super.initState();
//    }
    var activeScreen = 'active-screen';

   void switchScreen(){
     setState(() {
       activeScreen = 'question-screen';
     });
   }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:Scaffold(body: Container(
    decoration: const BoxDecoration(
      gradient:LinearGradient(colors:[Colors.red,Colors.black],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight
      ),
    ),
    child: activeScreen=='active-screen'? StartScreen(switchScreen): const Question(),
    )));
  }
}