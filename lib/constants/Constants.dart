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
  thirdQuestion.questionTitle = 'بزرگ ترین صرافی ارز دیجیتال در دنیا چه نام دارد ؟‌ ';
  thirdQuestion.imageNameNumber = '3';
  thirdQuestion.answerList = ['کوکوین', 'چین', 'بایننس', 'علی بابا'];
  thirdQuestion.correctAnswer = 2;


  var four = Question();
  four.questionTitle = 'یک زیردریایی در عمق 420 متری دریا و غواصی در عمق 300 متری دریا قرار دارند. کدام عدد موقعیت زیردریایی نسبت به غواص را درست نشان می‌دهد؟';
  four.imageNameNumber = '4';
  four.answerList = ['+120', '-120', '+720', '-420'];
  four.correctAnswer = 1;



  var five = Question();
  five.questionTitle = 'برای صید ماهی در کدام یک از مناطق زیر نیاز به لوازم پیشرفتۀ ماهیگیری و سردخانه است؟';
  five.imageNameNumber = '5';
  five.answerList = ['اطراف چابهار', 'رودخانه کارون', 'سواحل خلیج فارس', 'سواحل روسیه'];
  five.correctAnswer = 0;

  var six = Question();
  six.questionTitle = 'کاشف الکل کیست ؟';
  six.imageNameNumber = '6';
  six.answerList = ['زکریای ناراضی', 'زکریای نسبتا راضی', 'داداش زکریای راضی', 'زکریای رازی'];
  six.correctAnswer = 3;



  var seven = Question();
  seven.questionTitle = 'چه کسی رکورد پرش با نیزه را در سطح ملی جا به جا کرد ؟';
  seven.imageNameNumber = '7';
  seven.answerList = ['امیر علی اکبری', 'کانر', 'خبیب', 'ارشیا مصدقی'];
  seven.correctAnswer = 3;




  var eight = Question();
  eight.questionTitle = 'اولین ایرانی که به فضا رفت ؟‌ ';
  eight.imageNameNumber = '8';
  eight.answerList = ['پوتین', 'ترامپ', 'انوشه انصاری', 'هیچ کدام'];
  eight.correctAnswer = 2;



  var nine = Question();
  nine.questionTitle = 'نام طرح اولیه اینترنت چه بود ؟';
  nine.imageNameNumber = '9';
  nine.answerList = ['نت نت', 'اونترنت', 'آرپانت', 'اینترنت'];
  nine.correctAnswer = 2;





  List<Question> questions = [firstQuestion, secondQuestion,thirdQuestion,four,five,six,seven,eight,nine];
  return questions;






}
