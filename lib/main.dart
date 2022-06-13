import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    print('text button presses!');
                  },
                  onLongPress: () {
                    print('long press button!');
                  },
                  child: const Text(
                    'Text Button',
                    style: TextStyle(
                      color: Colors.red,
                      backgroundColor: Colors.yellow,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: (() {
                    print('Elevated button');
                  }),
                  child: const Text(
                    'Elevated BUTTON',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                    Colors.grey,
                  )),
                ),
                ElevatedButton(
                  onPressed: (() {
                    print('Elevated button 2');
                  }),
                  child: const Text(
                    'Elevated BUTTON 2',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith(
                      (states) => states.contains(MaterialState.pressed)
                          ? Colors.brown
                          : Colors.yellow,
                    ),
                  ),
                ),
                OutlinedButton(
                  onPressed: (() {
                    print('outlined button ');
                  }),
                  child: const Text(
                    'Outlined BUTTON ',
                  ),
                  style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(
                    Colors.teal,
                  )),
                ),
                IconButton(
                  onPressed: () {
                    print('Icon Button');
                  },
                  icon: const Icon(
                    Icons.volume_down_rounded,
                    color: Colors.red,
                    size: 50,
                  ),
                )
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red,
          foregroundColor: Colors.black,
          splashColor: Colors.indigoAccent,
          onPressed: (() {
            print('Floating button pressed!');
          }),
          child: const Icon(
            Icons.add,
            // color: Colors.yellow
          ),
        ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),

    );
  }
}
