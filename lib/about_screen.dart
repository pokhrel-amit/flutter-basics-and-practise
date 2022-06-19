import 'package:firstapp/custom_button.dart';
import 'package:firstapp/custom_card.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: const Text(
          'About Us',
        )),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const CustomCard(
              bodyWidget: Text('Hello! welcome to the about page '),
              shapeRadius: 60,
              height: 300,
            ),
            CustomButton(
                onPress: () {
                  Navigator.pop(context);
                },
                color: Colors.blue,
                title: 'Back',
                radius: 20),
          ],
        ),
      ),
    );
  }
}
