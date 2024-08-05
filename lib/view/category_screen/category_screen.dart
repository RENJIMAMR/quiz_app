import 'package:flutter/material.dart';
import 'package:quiz_app/utils/color_constants.dart';
import 'package:quiz_app/utils/image_constants.dart';
import 'package:quiz_app/view/Quiz_Screen/quiz_screen.dart';
import 'package:quiz_app/view/dummydb.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstants.MainBlack,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hi, john',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: ColorConstants.MainWhite),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Let's make this day productive",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: ColorConstants.MainWhite),
                        )
                      ],
                    ),
                    Spacer(),
                    CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 243, 149, 27),
                        radius: 30,
                        backgroundImage: AssetImage(ImageConstants.profile)),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 70, 67, 67)),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Color.fromARGB(255, 70, 67, 67),
                        backgroundImage: AssetImage(ImageConstants.trophy),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Ranking",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: ColorConstants.MainWhite),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            "356",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: ColorConstants.Mainblue.withOpacity(.7)),
                          )
                        ],
                      ),
                      Spacer(),
                      VerticalDivider(
                        endIndent: 10,
                        indent: 10,
                        color: ColorConstants.MainGrey,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage(ImageConstants.coin)),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Points",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: ColorConstants.MainWhite),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            "1209",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: ColorConstants.Mainblue.withOpacity(.7)),
                          )
                        ],
                      ),
                      Spacer()
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Let's Play",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: ColorConstants.MainWhite),
                ),
                SizedBox(
                  height: 10,
                ),
                GridView.builder(
                    // cacheExtent: 190,

                    shrinkWrap: true,
                    itemCount: 6,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 250,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        crossAxisCount: 2),
                    itemBuilder: (context, int currentQuizIndex) {
                      return InkWell(
                        onTap: () {
                          DummyDb.currentQuizIndex = currentQuizIndex;
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => QuizScreen(
                                  all_question_List: DummyDb
                                      .all_questionsList[currentQuizIndex],
                                ),
                              ));
                        },
                        child: Stack(
                          children: [
                            Positioned(
                              top: 80,
                              child: Container(
                                width: 180,
                                height: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color.fromARGB(255, 70, 67, 67)),
                                child: Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    // mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            DummyDb.homePageData[
                                                currentQuizIndex]['topic'],
                                            style: TextStyle(
                                                fontSize: 20,
                                                color:
                                                    ColorConstants.MainWhite),
                                          ),
                                          Spacer()
                                        ],
                                      ),
                                      Text(
                                        DummyDb.homePageData[currentQuizIndex]
                                            ['total_qstns'],
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: ColorConstants.MainWhite),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 95,
                              left: 10,
                              child: Image.asset(
                                  height: 180,
                                  width: 150,
                                  DummyDb.homePageData[currentQuizIndex]
                                      ['png_image']),
                            )
                          ],
                        ),
                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
