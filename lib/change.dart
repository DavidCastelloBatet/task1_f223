import 'package:flutter/material.dart';

class ChangeTextWidget extends StatelessWidget {
  final VoidCallback changeText;
  final String buttonText;

  ChangeTextWidget(this.changeText, this.buttonText);

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return RaisedButton(
      color: Colors.blue[300],
      onPressed: changeText,
      child: Text(
        buttonText,
        style: TextStyle(
          letterSpacing: 2,
          fontSize: 20,
          color: Colors.blue[900],
        ),
      ),
    );
  }
}
