import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          color: Color.fromARGB(255, 80, 35, 243),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/quiz-logo.png',
                  width: 200,
                  height: 200,
                ),
                const SizedBox(height: 60),
                Text(
                  'Learn Flutter the fun way!',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                const SizedBox(height: 60),
                OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    'Start Quiz',
                    style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
