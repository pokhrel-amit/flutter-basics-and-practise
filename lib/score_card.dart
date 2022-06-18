
// import 'package:firstapp/custom_card.dart';
import 'package:firstapp/custom_card.dart';
import 'package:firstapp/utils.dart';
import 'package:flutter/material.dart';
import 'package:firstapp/main.dart';

class ScoreCard extends StatelessWidget {
   const ScoreCard({required this.currentScore ,required this.totalAttempted,required this.context });
  final int currentScore;
  final int totalAttempted; 
  final context;

  @override
  Widget build(BuildContext context ) {
    ThemeData theme = Theme.of(this.context);
    return CustomCard(
      color: Colors.blue.shade400,
      // elevation: 20,
      height: 60,
      shapeRadius: 20,
      headingWidget: Text( 
        
        'Score: $currentScore / $totalAttempted',
        style: theme.textTheme.headline2,
        
      ),
    );
  }
}
