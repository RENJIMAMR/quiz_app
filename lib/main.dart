import 'package:flutter/material.dart';
import 'package:quiz_app/view/category_screen/category_screen.dart';
import 'package:quiz_app/view/ranking_screen/ranking_screen.dart';
import 'package:quiz_app/view/splash_screen/splash_screen.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
