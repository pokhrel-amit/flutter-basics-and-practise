import 'package:firstapp/about_screen.dart';
import 'package:firstapp/quiz.dart';
import 'package:firstapp/result_screen.dart';
import 'package:firstapp/routes.dart';
import 'package:flutter/material.dart';
import 'guess_capital_app_screen.dart';
import 'package:flutter/cupertino.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (settings) => CustomRoutes.generateRoutes(settings),
      initialRoute: '/',
      theme: ThemeData(
        primaryColor: Colors.red,
        scaffoldBackgroundColor: Colors.lightBlue.shade100,
        appBarTheme: AppBarTheme(backgroundColor: Colors.lightBlue.shade400),
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w800,
            color: Colors.black,
          ),
          subtitle1: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w800,
            color: Colors.white,
          ),
          headline2: TextStyle(
            fontSize: 35,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
