import 'package:flutter/material.dart';
import 'package:quiz_application/data/Question.dart';

List<Question> getQuestions() {
  var firstQuestion = Question();
  firstQuestion.questionTitle = 'مشهور ترین شعبده باز جهان کیست ؟‌ ';
  firstQuestion.imageNameNumber = '1';
  firstQuestion.answerList =
  ['امید کرمی', 'دیوید کاپرفیلد', 'هری هودینی', 'دیوید بیلین'];
  firstQuestion.correctAnswer = 2;


  var secondQuestion = Question();
  secondQuestion.questionTitle = 'چه کشوری ایستگاه فضایی میر را بنا کرد ؟‌ ';
  secondQuestion.imageNameNumber = '2';
  secondQuestion.answerList = ['روسیه', 'آمریکا', 'چین', 'هند'];
  secondQuestion.correctAnswer = 0;


  var thirdQuestion = Question();
  thirdQuestion.questionTitle = 'چه کشوری ایستگاه فضایی میر را بنا کرد ؟‌ ';
  thirdQuestion.imageNameNumber = '3';
  thirdQuestion.answerList = ['روسیه', 'usa', 'chin', 'ali'];
  thirdQuestion.correctAnswer = 0;


  List<Question> questions = [firstQuestion, secondQuestion,thirdQuestion];
  return questions;
}
