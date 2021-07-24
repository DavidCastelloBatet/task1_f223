import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String sentenceText;

  TextWidget(this.sentenceText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 40),
      child: Text(
        sentenceText,
        style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
