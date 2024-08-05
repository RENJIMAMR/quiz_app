import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:quiz_app/utils/color_constants.dart';
import 'package:quiz_app/view/Quiz_Screen/option_card.dart';
import 'package:quiz_app/view/result_screen/result_screen.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({
    super.key,
    this.all_question_List = const [],
  });
  final List all_question_List;

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int? selectedIndex;
  int rightAnswerCount = 0;
  int wrongAnswerCount = 0;
  int skippedQstnCount = 0;
  int currentQstnIndex = 0;
  @override
  void initState() {
    // TODO: implement initState
    print(
        'percent value ${(currentQstnIndex + 1) / widget.all_question_List.length}');
    print(' length of quiz ${widget.all_question_List.length}');

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.MainBlack,
      appBar: AppBar(
        leading: InkWell(
          onTap: () => Navigator.pop,
          child: Icon(
            Icons.close_rounded,
            color: ColorConstants.MainWhite,
          ),
        ),
        title: LinearPercentIndicator(
          progressColor: ColorConstants.mainOrange,
          percent: (currentQstnIndex + 1) / widget.all_question_List.length,
          backgroundColor: ColorConstants.MainWhite,
        ),
        backgroundColor: ColorConstants.MainBlack,
        actions: [
          Text(
            "${currentQstnIndex + 1} /${widget.all_question_List.length}",
            style: TextStyle(color: ColorConstants.MainWhite),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(15),
            child:
                //  Column(
                // children:
                // List.generate(widget.selectedTopic, (index) =>
                Column(
              children: [
                Stack(
                  children: [
                    SizedBox(
                      height: 195,
                      width: double.infinity,
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      // bottom: 0,
                      child: Container(
                        padding: EdgeInsets.only(
                          top: 20,
                        ),
                        width: double.infinity,
                        height: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: ColorConstants.blueGrey),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Text(
                            widget.all_question_List[currentQstnIndex]
                                    ['Question']
                                .toString(),
                            // DummyDb.flutter_question[currentQstnIndex]['question']
                            //     .toString(),
                            style: TextStyle(
                                color: ColorConstants.MainWhite, fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 130,
                      top: 0,
                      child: CircularPercentIndicator(
                        radius: 40,
                        circularStrokeCap: CircularStrokeCap.round,
                        lineWidth: 10,
                        progressColor: ColorConstants.Mainblue,
                        backgroundColor: ColorConstants.MainWhite,
                        percent: (currentQstnIndex + 1) /
                            widget.all_question_List.length,
                        center: Text(
                          '${currentQstnIndex + 1}',
                          style: TextStyle(
                              color: ColorConstants.MainWhite,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Column(
                    children: List.generate(4, (index) {
                  List ansoptions =
                      widget.all_question_List[currentQstnIndex]['Options'];

                  return OptionCard(
                    oncardpressed: () {
                      if (selectedIndex == null) {
                        print(index);
                        selectedIndex = index;

                        setState(() {});

                        if (index ==
                            widget.all_question_List[currentQstnIndex]
                                ['AnswerIndex']) {
                          rightAnswerCount++;
                          print(rightAnswerCount);
                        } else {
                          wrongAnswerCount++;
                          print(wrongAnswerCount);
                        }
                      }
                    },
                    answer: ansoptions[index],
                    borderColor: getColor(index),
                    checkColor: getColor(index),
                    isIcon: getIcon(index),
                  );
                })),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        minimumSize:
                            WidgetStatePropertyAll(Size(double.infinity, 50)),
                        backgroundColor:
                            WidgetStatePropertyAll(ColorConstants.blueGrey)),
                    onPressed: () {
                      if (currentQstnIndex < widget.all_question_List.length - 1
                          // DummyDb.flutter_question.length - 1
                          &&
                          selectedIndex == null) {
                        currentQstnIndex++;
                        skippedQstnCount++;
                        print('current qstn $currentQstnIndex');
                        print('skipped qstn $skippedQstnCount');
                        // selectedIndex = null;
                      } else if (selectedIndex == null) {
                        skippedQstnCount++;
                        print('skipped qstn $skippedQstnCount');
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ResultScreen(
                                qstnCount: widget.all_question_List.length,
                                rightAnswerCount: rightAnswerCount,
                                wrongAnswerCount: wrongAnswerCount,
                                skippedQstnCount: skippedQstnCount,
                              ),
                            ));
                      }

                      setState(() {});
                    },
                    child: Text(
                      'Next',
                      style: TextStyle(
                          color: ColorConstants.MainWhite, fontSize: 25),
                    )),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        minimumSize:
                            WidgetStatePropertyAll(Size(double.infinity, 50)),
                        backgroundColor:
                            WidgetStatePropertyAll(ColorConstants.Mainblue)),
                    onPressed: () {
                      if (selectedIndex != null) {
                        if (currentQstnIndex <
                                widget.all_question_List.length - 1
                            // DummyDb.flutter_question.length - 1 &&
                            ) {
                          currentQstnIndex++;
                          print(currentQstnIndex);
                          selectedIndex = null;
                        } else {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ResultScreen(
                                  qstnCount: widget.all_question_List.length,
                                  rightAnswerCount: rightAnswerCount,
                                  wrongAnswerCount: wrongAnswerCount,
                                  skippedQstnCount: skippedQstnCount,
                                ),
                              ));
                        }
                        // } else {
                        //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        //       content: Text(
                        //     'Select a Valid Option',
                        //     style: TextStyle(color: ColorConstants.MainWhite),
                        //   )));
                      }
                      setState(() {});
                    },
                    child: Text(
                      'Submit',
                      style: TextStyle(
                          color: ColorConstants.MainWhite, fontSize: 25),
                    ))
              ],
            )
            //   ,)

            // ),
            ),
      ),
    );
  }

  Color getColor(
    int index,
  ) {
    if (selectedIndex != null) {
      if (selectedIndex == index &&
          selectedIndex ==
              widget.all_question_List[currentQstnIndex]['AnswerIndex']) {
        // DummyDb.flutter_question[currentQstnIndex]['answerIndex']) {
        return ColorConstants.Mainblue;
      } else if (index ==
          widget.all_question_List[currentQstnIndex]['AnswerIndex']) {
        // DummyDb.flutter_question[currentQstnIndex]['answerIndex']) {
        return ColorConstants.Mainblue;
      } else if (index == selectedIndex &&
          selectedIndex !=
              widget.all_question_List[currentQstnIndex]['AnswerIndex']) {
        // DummyDb.flutter_question[currentQstnIndex]['answerIndex']) {
        return ColorConstants.MainRed;
      } else {
        return ColorConstants.MainGrey;
      }
    } else {
      return ColorConstants.MainGrey;
    }
  }

  Widget getIcon(
    int index,
  ) {
    if (selectedIndex != null) {
      if (selectedIndex == index &&
          selectedIndex ==
              widget.all_question_List[currentQstnIndex]['AnswerIndex']) {
        // DummyDb.flutter_question[currentQstnIndex]['answerIndex']) {
        return Icon(
          Icons.check,
          color: ColorConstants.Mainblue,
        );
      } else if (index ==
          widget.all_question_List[currentQstnIndex]['AnswerIndex']) {
        // DummyDb.flutter_question[currentQstnIndex]['answerIndex']) {
        return Icon(
          Icons.check,
          color: ColorConstants.Mainblue,
        );
      } else if (index == selectedIndex &&
          selectedIndex !=
              widget.all_question_List[currentQstnIndex]['AnswerIndex']) {
        // DummyDb.flutter_question[currentQstnIndex]['answerIndex']) {
        return Icon(
          Icons.close,
          color: ColorConstants.MainRed,
        );
      } else {
        return Icon(
          Icons.close,
          color: ColorConstants.MainBlack,
        );
      }
    } else {
      return Icon(
        Icons.close,
        color: ColorConstants.MainBlack,
      );
    }
  }
}
