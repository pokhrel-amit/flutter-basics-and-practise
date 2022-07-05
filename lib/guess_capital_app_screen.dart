import 'package:firstapp/about_screen.dart';
import 'package:firstapp/countries.dart';
import 'package:firstapp/custom_button.dart';
import 'package:firstapp/custom_card.dart';
import 'package:firstapp/quiz.dart';
import 'package:firstapp/result_screen.dart';
import 'package:firstapp/score_card.dart';
import 'package:firstapp/utils.dart';
import 'package:flutter/material.dart';

class GuessCapitalApp extends StatefulWidget {
  const GuessCapitalApp({Key? key}) : super(key: key);

  @override
  State<GuessCapitalApp> createState() => _GuessCapitalAppState();
}

class _GuessCapitalAppState extends State<GuessCapitalApp> {
  Quiz quizeScoreCard = Quiz();
  bool showAnswer = false;
  void handleShowAnswer() {
    setState(() {
      showAnswer = !showAnswer;
    });
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: (() {
            setState(() {
              quizeScoreCard.resetQuiz();
              showAnswer = false;
            });
          }),
          child: const Text(
            'Reset',
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        backgroundColor: Colors.lightBlue.shade100,
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Guess Capital',
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              GestureDetector(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      'About Us',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                onTap: (() {
                  Navigator.pushNamed(context, '/about');
                }),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: ScoreCard(
                  currentScore: quizeScoreCard.currentScore,
                  totalAttempted: quizeScoreCard.totalAttempted,
                  // context: context,
                ),
              ),
              CustomCard(
                onPress: handleShowAnswer,
                color: Colors.blue.shade700,
                elevation: 20,
                height: 200,
                shapeRadius: 20,
                headingWidget: Text(
                  showAnswer ? 'Capital' : 'Country:',
                  style: theme.textTheme.headline1,
                ),
                bodyWidget: Text(
                  showAnswer
                      ? countries[quizeScoreCard.totalAttempted]['city']!
                      : countries[quizeScoreCard.totalAttempted]['country']!,
                  style: theme.textTheme.subtitle1,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomButton(
                    color: Colors.green,
                    radius: 20,
                    title: 'Correct',
                    onPress: markAnswerRight,
                  ),
                  CustomButton(
                    color: Colors.red,
                    radius: 20,
                    onPress: markAnswerWrong,
                    title: 'Wrong',
                  ),
                ],
              ),
              Column(
                children: [
                  CustomButton(
                      onPress: () {
                        Navigator.pushNamed(
                          context,
                          '/score',
                          arguments: quizeScoreCard,
                        ).then((value ) {
                          if (value =='restart'){
                            resetQuiz();
                          }
                        });
                      },
                      color: Colors.blue,
                      title: 'Show Result',
                      radius: 20),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  markAnswerWrong() {
    setState(() {
      if (quizeScoreCard.totalAttempted < countries.length - 1) {
        quizeScoreCard.markAnswerWrong();
      } else {
        showEOLAlert(context);
      }
    });
  }

  markAnswerRight() {
    setState(() {
      if (quizeScoreCard.totalAttempted < countries.length - 1) {
        quizeScoreCard.markAnswerCorrect();
      } else {
        showEOLAlert(context);
      }
    });
  }

  resetQuiz(){
    setState(() {
      quizeScoreCard.resetQuiz();
    });
  }
}
