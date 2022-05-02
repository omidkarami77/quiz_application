import 'package:flutter/material.dart';

class QuizPage extends StatelessWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text(
          'کوییز ها',
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
              image: AssetImage('images/1.png'),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'مشهور ترین شعبده باز دنیا کیست ؟ ',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 30,
            ),
            ListTile(
              title: Text(
                'پاسخ اول',
                textAlign: TextAlign.end,
              ),
            ),
            ListTile(
              title: Text(
                'پاسخ دوم',
                textAlign: TextAlign.end,
              ),
            ),
            ListTile(
              title: Text(
                'پاسخ سوم',
                textAlign: TextAlign.end,
              ),
            ),
            ListTile(
              title: Text(
                'پاسخ چهارم',
                textAlign: TextAlign.end,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
