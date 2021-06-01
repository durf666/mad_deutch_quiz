import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void answerQuestion() {
    setState(() {
      index = index + 1;
    });
  }

  int index = 0;

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite color?',
      'What\'s your favourite animal?',
      'What\'s your favourite color?',
      'What\'s your favourite food?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: Column(children: [
          Text(questions[index]),
          ElevatedButton(onPressed: answerQuestion, child: Text('Answer 1')),
          ElevatedButton(
              onPressed: () => print('answer 2 chosen'),
              child: Text('Answer 2')),
          ElevatedButton(onPressed: null, child: Text('Answer 3')),
        ]),
      ),
    );
  }
}
