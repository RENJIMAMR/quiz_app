import 'package:flutter/material.dart';
import 'package:quiz_app/utils/color_constants.dart';
import 'package:quiz_app/view/Quiz_Screen/quiz_screen.dart';
import 'package:quiz_app/view/dummydb.dart';
import 'package:quiz_app/view/category_screen/category_screen.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key,
      required this.rightAnswerCount,
      required this.wrongAnswerCount,
      required this.skippedQstnCount,
      required this.qstnCount});
  final int rightAnswerCount, wrongAnswerCount, skippedQstnCount, qstnCount;
  @override
  Widget build(BuildContext context) {
    double percentage = rightAnswerCount * 100 / qstnCount;
    return Scaffold(
      backgroundColor: ColorConstants.MainBlack,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Congrats!',
              style: TextStyle(
                  color: ColorConstants.MainWhite,
                  fontWeight: FontWeight.w600,
                  fontSize: 50),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              '${percentage.toStringAsFixed(1)}%Score',
              style: TextStyle(color: ColorConstants.mainGreen, fontSize: 40),
            ),
            Text(
              'Correct Answers:$rightAnswerCount ',
              style: TextStyle(color: ColorConstants.MainWhite, fontSize: 19),
            ),
            Text(
              'Wrong Answers: $wrongAnswerCount',
              style: TextStyle(color: ColorConstants.MainWhite, fontSize: 19),
            ),
            Text(
              'Skipped Questions: $skippedQstnCount',
              style: TextStyle(color: ColorConstants.MainWhite, fontSize: 19),
            ),
            SizedBox(
              height: 30,
            ),
            TextButton(
                style: ButtonStyle(
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17))),
                    minimumSize: WidgetStatePropertyAll(Size(120, 50)),
                    backgroundColor:
                        WidgetStatePropertyAll(ColorConstants.mainOrange),
                    side: WidgetStatePropertyAll(BorderSide(
                      color: ColorConstants.MainWhite,
                      width: 2,
                    ))),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text(
                          'Do you want to restart the same Quiz or want Navigate to  Home Screen?'),
                      actions: [
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: WidgetStatePropertyAll(
                                    ColorConstants.Mainblue)),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuizScreen(
                                      all_question_List:
                                          DummyDb.all_questionsList[
                                              DummyDb.currentQuizIndex!],
                                    ),
                                  ));
                            },
                            child: Text(
                              'Restart',
                              style: TextStyle(
                                  color: ColorConstants.MainWhite,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            )),
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: WidgetStatePropertyAll(
                                    ColorConstants.Mainblue)),
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => CategoryScreen(),
                                  ));
                            },
                            child: Text('Home Screen',
                                style: TextStyle(
                                    color: ColorConstants.MainWhite,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15)))
                      ],
                    ),
                  );
                },
                child: Text(
                  'Restart',
                  style:
                      TextStyle(color: ColorConstants.MainWhite, fontSize: 20),
                ))
          ],
        ),
      ),
    );
  }
}
