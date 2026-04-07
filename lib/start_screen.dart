import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget{
    const StartScreen(this._startQuiz, {super.key});
    final void Function() _startQuiz;

    @override
    Widget build(BuildContext context){
        return Center(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
                Opacity(opacity: 0.4, child: Image.asset('assets/images/quiz-logo.png',width: 200,height: 200,)),
                const SizedBox(height: 20,),
                const Text('Learn flutter the fun way!',style: TextStyle( color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),),
                const SizedBox(height: 20,),
                OutlinedButton.icon(onPressed: _startQuiz, icon: const Icon(Icons.arrow_forward), style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  side: const BorderSide(color: Colors.white),
                  
                ), label: const Text('Start Quiz',style: TextStyle(color: Colors.white),))
            ]));    
    }
}