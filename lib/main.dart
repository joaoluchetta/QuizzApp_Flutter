import 'package:flutter/material.dart';
import 'package:quizzapp_flutter/start_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container (
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(8, 21, 85, 255),
                Color.fromARGB(8, 30, 85, 255),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: StartScreen(),
          ),
      ),
    ),
  );
}