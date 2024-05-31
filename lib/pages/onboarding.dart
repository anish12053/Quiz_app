import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/data/data.dart';
import 'package:flutter_quiz_app/pages/homepage.dart';
import 'package:flutter_quiz_app/pages/question_screen.dart';
import 'package:flutter_quiz_app/pages/result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var activeScreen = "homeScreen";

  List<String> selectedAnswer = [];

  void changeScreen() {
    setState(() {
      activeScreen = "questionScreen";
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswer.add(answer);
    if (selectedAnswer.length == questions.length) {
      setState(() {
        activeScreen = 'resultScreen';
      });
    }
  }

  

  @override
  Widget build(BuildContext context) {
    Widget screen = HomePage(changeScreen);
    if (activeScreen == "questionScreen") {
      screen = QuestionScreen(chooseAnswer);
    } else if(activeScreen == "resultScreen"){
      screen = ResultScreen(selectedAnswer);
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            color: Colors.deepPurple,
          ),
          child: Center(
            child: screen,
          ),
        ),
      ),
    );
  }
}
