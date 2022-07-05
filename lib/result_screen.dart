import 'package:firstapp/custom_button.dart';
import 'package:firstapp/custom_card.dart';
import 'package:firstapp/quiz.dart';
import 'package:firstapp/score_card.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({this.currentScore = 0, this.totalAttempted = 0});
  final currentScore;
  final totalAttempted;
  Quiz quizScoreCard = Quiz();

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Result'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomCard(
              shapeRadius: 50,
              height: 300,
              headingWidget:
                  Text('Quiz Ended', style: theme.textTheme.headline2),
              bodyWidget: Text(
                'Score: $currentScore / $totalAttempted',
                style: theme.textTheme.headline2,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                  color: Colors.blue,
                  radius: 20,
                  title: 'Restart',
                  onPress: () {
                    Navigator.pop(context, 'restart');
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
