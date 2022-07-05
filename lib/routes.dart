import 'package:firstapp/about_screen.dart';
import 'package:firstapp/guess_capital_app_screen.dart';
import 'package:firstapp/quiz.dart';
import 'package:firstapp/result_screen.dart';
import 'package:flutter/material.dart';

class CustomRoutes {
  static const homePage = '/';
  static const aboutPage = '/about';
  static const scorePage = '/score';

  static generateRoutes(settings) {
    switch (settings.name) {
      case scorePage:
        final arg = settings.arguments as Quiz;
        return MaterialPageRoute(
          builder: (context) => ResultScreen(
            currentScore: arg.currentScore,
            totalAttempted: arg.totalAttempted,
          ),
        );

      case aboutPage:
        return MaterialPageRoute(builder: ((context) => AboutScreen()));

      default:
              return MaterialPageRoute(builder: ((context) => GuessCapitalApp()));




    }
  }
}
