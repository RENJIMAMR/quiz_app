import 'package:flutter/material.dart';
import 'package:quiz_app/utils/color_constants.dart';

class RankingScreen extends StatefulWidget {
  const RankingScreen({super.key});

  @override
  State<RankingScreen> createState() => _RankingScreenState();
}

class _RankingScreenState extends State<RankingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: ColorConstants.mainTransparent,
        leading: Icon(
          Icons.arrow_back_ios,
          size: 30,
          color: ColorConstants.MainWhite,
        ),
        title: Text(
          'Leaderboard',
          style: TextStyle(color: ColorConstants.MainWhite, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://images.pexels.com/photos/2680270/pexels-photo-2680270.jpeg?auto=compress&cs=tinysrgb&w=400'),
                fit: BoxFit.cover)),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 50),
              child: Column(
                children: [
                  DefaultTabController(
                      length: 3,
                      child: TabBar(
                          labelColor: ColorConstants.Mainblue,
                          // labelStyle: ,
                          tabs: [
                            Tab(
                              child: Container(
                                decoration: BoxDecoration(
                                    color: ColorConstants.Mainblue,
                                    borderRadius: BorderRadius.circular(30)),
                                child: Center(
                                  child: Text(
                                    'All time',
                                    style: TextStyle(
                                        color: ColorConstants.MainWhite,
                                        fontSize: 16),
                                  ),
                                ),
                              ),
                            ),
                            Tab(
                              child: Text(
                                'This week',
                                style: TextStyle(
                                    color: ColorConstants.MainWhite,
                                    fontSize: 16),
                              ),
                            ),
                            Tab(
                              child: Text(
                                'Month',
                                style: TextStyle(
                                    color: ColorConstants.MainWhite,
                                    fontSize: 20),
                              ),
                            ),
                          ]))
                ],
              ),
            ),
            Container(
              height: 370,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: ColorConstants.MainBlack,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(150),
                      topRight: Radius.circular(150))),
            )
          ],
        ),
      ),
    );
  }
}
