import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CustomCard extends StatelessWidget {
  final double? shapeRadius;
  final Color? color;
  final double? elevation;
  final Widget? headingWidget;
  final Widget? bodyWidget;
  final double? height;

  const CustomCard({
    this.shapeRadius,
    this.color,
    this.elevation,
    this.headingWidget,
    this.bodyWidget,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(shapeRadius!)),
        // shadowColor: Colors.blueAccent,
        color: color,
        elevation: elevation,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(child: headingWidget),
            Container(child: bodyWidget)
          ],
        ),
      ),
    );
  }
}
