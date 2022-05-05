import 'package:flutter/material.dart';
import 'package:quiz_application/constants/Constants.dart';
import 'package:quiz_application/data/Question.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int shownQuestionIndex = 0;
  Question? selectedQuestion;
  bool isFinalAsnwerSubmitted = false;

  @override
  Widget build(BuildContext context) {
    selectedQuestion = getQuestions()[shownQuestionIndex];

    Widget getOptionItem(int index) {
      return ListTile(
        title: Text('${selectedQuestion!.answerList[index]}',
            textAlign: TextAlign.end),
        onTap: () {
          if (shownQuestionIndex == getQuestions().length - 1) {
            isFinalAsnwerSubmitted = true;
          }

          setState(() {
            if (shownQuestionIndex < getQuestions().length - 1) {
              shownQuestionIndex += 1;
            }
          });
        },
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text(
          ' سوال${shownQuestionIndex +1} از ${getQuestions().length}',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(width: double.infinity),
            Image(
              height: 300,
              image:
                  AssetImage('images/${selectedQuestion!.imageNameNumber}.png'),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              selectedQuestion!.questionTitle,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 30,
            ),
            ...List.generate(4, (index) {
              return getOptionItem(index);
            }),
            if (isFinalAsnwerSubmitted)
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'مشاهده نتایج آزمون',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red[700],
                  minimumSize: Size(200, 40),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
