// import 'package:firstapp/custom_card.dart';
import 'package:firstapp/custom_card.dart';
import 'package:flutter/material.dart';

class ScoreCard extends StatelessWidget {
  ScoreCard({this.currentScore = 0, this.totalAttempted = 0});
  int currentScore;
  int totalAttempted;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      color: Colors.blue.shade400,
      elevation: 20,
      height: 60,
      shapeRadius: 20,
      headingWidget: Text(
        'Score: $currentScore / $totalAttempted',
        style: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}
