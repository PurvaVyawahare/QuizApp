import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/result_screen.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/data/dummy_questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var currScreen = 'Start-Screen';
  List<String> selectedAnswers = [];
  void switchScreen() {
    setState(() {
      currScreen = 'Question-Screen';
    });
  }

  void selectAnswers(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        currScreen = 'Result-Screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      currScreen = 'StartScreen';
      selectedAnswers = [];
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activeScreen = StartScreen(switchScreen);
    if (currScreen == 'Question-Screen') {
      activeScreen = QuestionScreen(selectAnswers);
    }
    if (currScreen == 'Result-Screen') {
      activeScreen = ResultScreen(selectedAnswers, restartQuiz);
    }
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color.fromARGB(255, 31, 1, 82),
              const Color.fromARGB(255, 48, 6, 121),
              const Color.fromARGB(255, 78, 14, 188),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: activeScreen,
      ),
    );
  }
}
