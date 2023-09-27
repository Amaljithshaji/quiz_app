

import 'package:flutter/material.dart';
//import 'package:quiz_app/homeScreen/home.dart';
import 'package:quiz_app/homeScreen/splash/splashScreen.dart';

void main()=>runApp(const QuizApp());

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashSceen(),
    );
  }
}