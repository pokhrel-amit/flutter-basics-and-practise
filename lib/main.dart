import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// Light Bulb App
void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyBulbApp();
  }
}

class MyBulbApp extends StatefulWidget {
  const MyBulbApp({Key? key}) : super(key: key);

  @override
  State<MyBulbApp> createState() => _MyBulbAppState();
}

class _MyBulbAppState extends State<MyBulbApp> {
  bool isTurnedOn = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Light Bulb',
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
               isTurnedOn? Icons.lightbulb: Icons.lightbulb_outline,
                size: 200,
                color: isTurnedOn ? Colors.yellow : Colors.black,
                
              ),
              ElevatedButton(
                  onPressed: (() {
                    setState(() {
                      isTurnedOn = !isTurnedOn;
                    });
                  }),
                  child: Text(
                    isTurnedOn ? 'Turn Off' : 'Turn On',
                    style: TextStyle(
                      backgroundColor: Colors.lightBlue.withOpacity(0.3),
                      fontSize: 30,
                      fontFamily: 'DancingScript',
                      fontWeight: FontWeight.w900,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
