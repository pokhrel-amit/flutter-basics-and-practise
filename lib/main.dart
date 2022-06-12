

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp( MyApp());
}

// bundling images
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('images/bulb.jpg'),
                ),
                border: Border.all(
                  color: Colors.orange,
                  width: 10,
                ),
                borderRadius: BorderRadius.circular(150),
              ),
            ),
          ),
        ),
      ),
    );
  }
}