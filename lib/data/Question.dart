import 'package:flutter/material.dart';

class Question {
  late String _questionTitle;
  late String _imageNameNumber;
  late List<String> _answerList;
  late int _correctAnswer;

  String get questionTitle {
   return _questionTitle;
  }
  set questionTitle(String value) {
    _questionTitle = value;
  }

  String get imageNameNumber => _imageNameNumber;

  set imageNameNumber(String value) {
    _imageNameNumber = value;
  }

  int get correctAnswer => _correctAnswer;

  set correctAnswer(int value) {
    _correctAnswer = value;
  }

  List<String> get answerList => _answerList;

  set answerList(List<String> value) {
    _answerList = value;
  }
}
