// import 'package:firstapp/custom_card.dart';
import 'package:firstapp/custom_card.dart';
import 'package:firstapp/utils.dart';
import 'package:flutter/material.dart';
import 'package:firstapp/main.dart';

class ScoreCard extends StatelessWidget {
  const ScoreCard({this.currentScore = 0, this.totalAttempted = 0});
  final int currentScore;
  final int totalAttempted;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Expanded(
      child: CustomCard(
        color: Colors.blue.shade400,
        // elevation: 20,
        height: 70,
        shapeRadius: 20,
        headingWidget: Expanded(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Score: ',
              style: theme.textTheme.headline2,
            ),
            Text(
              '$currentScore / $totalAttempted',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 50,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        )),
      ),
    );
  }
}
// Text( 
            
//             'Score: $currentScore / $totalAttempted',
//             style: theme.textTheme.headline2,