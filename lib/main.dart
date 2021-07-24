import 'package:flutter/material.dart';

import './text.dart';
import './change.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List sentence = ['Try to Change', 'Good Job !!'];

  int indexSentence = 0;

  void changeSentence() {
    setState(() {
      indexSentence = indexSentence + 1;
    });
  }

  void restart() {
    setState(() {
      indexSentence = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task 1',
      home: Scaffold(
        backgroundColor: Colors.blue[100],
        appBar: AppBar(
          backgroundColor: Colors.blue[700],
          title: Text('Task 1'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextWidget(sentence[indexSentence]),
              (indexSentence == 0)
                  ? ChangeTextWidget(changeSentence, 'Change the sentence !')
                  : ChangeTextWidget(restart, 'Try Again'),
            ],
          ),
        ),
      ),
    );
  }
}
