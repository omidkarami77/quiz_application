import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen(
      {Key? key, this.resultAnswer = 0, })
      : super(key: key);
  int resultAnswer = 0;
  List<String> resultAnswerList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text(
          'نتیجه آزمون',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: Image(
                image: AssetImage('images/cup.png'),
              ),
            ),
            Text(
              'پاسخ های صحیح شما',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            Text(
              '$resultAnswer',
              style: TextStyle(fontSize: 100, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
