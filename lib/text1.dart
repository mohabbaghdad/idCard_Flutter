import 'package:flutter/material.dart';

class Text1 extends StatelessWidget {
  String textName;

  Text1({this.textName});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      textName,
      style: TextStyle(
        color: Colors.grey,
        letterSpacing: 2.0,
      ),
    );
  }
}
