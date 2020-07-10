import 'package:flutter/material.dart';

class Text2 extends StatelessWidget {
  String textName;
  double fontSize;

  Text2({this.textName, this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      textName,
      style: TextStyle(
        fontSize: fontSize,
        color: Colors.amber,
        letterSpacing: 2,
      ),
    );
  }
}
