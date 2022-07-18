import 'package:flutter/material.dart';
import 'package:quiz_application/constants/Constants.dart';
import 'package:quiz_application/data/Question.dart';
import 'package:quiz_application/screens/result_screen.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int shownQuestionIndex = 0;
  Question? selectedQuestion;
  bool isFinalAsnwerSubmitted = false;
  int correctAnswer = 0;
  List<String> correctAnswerIndex = [];

  @override
  Widget build(BuildContext context) {
    selectedQuestion = getQuestions()[shownQuestionIndex];

    Widget getOptionItem(int index) {
      return ListTile(
        title: Text('${selectedQuestion!.answerList[index]}',
            textAlign: TextAlign.end),
        onTap: () {
          if (selectedQuestion!.correctAnswer == index) {
            print('correct');
            correctAnswer += 1;
          } else {
            print('incorrect');
          }

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
          ' سوال${shownQuestionIndex + 1} از ${getQuestions().length}',
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
              height: 3,
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                selectedQuestion!.questionTitle,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ...List.generate(4, (index) {
              return getOptionItem(index);
            }),
            if (isFinalAsnwerSubmitted)
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext build) => ResultScreen(
                            resultAnswer: correctAnswer,
                          )));
                },
                child: Text(
                  'مشاهده نتایج آزمون',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red[700],
                  minimumSize: Size(200, 40),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
