import 'package:flutter/material.dart';
import 'package:quizz_app/questions_screen.dart';
import 'package:quizz_app/start_screen.dart';
import 'package:quizz_app/data/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizzState();
  }
}

class _QuizzState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';
  //Widget? activeScreen;

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
      //activeScreen = const QuestionsScreen();
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        selectedAnswers = [];
        activeScreen = 'start-screen';
      });
    }
  }

  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  @override
  Widget build(context) {    
    Widget screenWidget = StartScreen(switchScreen);

  if(activeScreen == 'questions-screen'){
    screenWidget = const QuestionsScreen(
      onSelectAnswer: chooseAnswer
    );
  }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 2, 19, 66),
                Color.fromARGB(255, 7, 49, 175),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
