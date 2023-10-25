import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsearch/Components/scoreCard.dart';

class QuizSubmit extends StatelessWidget {
  const QuizSubmit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () => Get.back(),
          child: const Icon(
            Icons.arrow_back_outlined,
            color: Colors.white,
            // size: 20,
          ),
        ),
        backgroundColor: const Color(0xFF3344DA),
        bottom: PreferredSize(
            preferredSize:
                const Size.fromHeight(25),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 10, right: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment
                            .spaceBetween,
                    children: [
                      const SizedBox(width: 5),
                      const Padding(
                        padding: EdgeInsets.only(
                            left: 8.0),
                        child: Text(
                          "Learning Score",
                          style: TextStyle(
                            fontFamily: "Ubuntu",
                            fontSize: 18,
                            fontWeight:
                                FontWeight.w500,
                            color:
                                Color(0xFFFFFFFF),
                            height: 1.5,
                          ),
                          textAlign:
                              TextAlign.left,
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            color:
                                Color(0xFFFFFFFF),
                            borderRadius:
                                BorderRadius.all(
                                    Radius
                                        .circular(
                                            10))),
                        padding:
                            const EdgeInsets.only(
                                left: 8,
                                right: 8,
                                top: 2,
                                bottom: 2),
                        child: Wrap(
                          crossAxisAlignment:
                              WrapCrossAlignment
                                  .center,
                          children: const [
                            Icon(
                              Icons
                                  .access_time_outlined,
                              size: 15,
                            ),
                            Text(
                              "16:35",
                              style: TextStyle(
                                fontFamily:
                                    "Ubuntu",
                                fontSize: 14,
                                fontWeight:
                                    FontWeight
                                        .w400,
                              ),
                              textAlign: TextAlign
                                  .center,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  )
                ],
              ),
            )),
      ),
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.center,
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                      left: 35,
                      top: 15,
                      bottom: 10),
                  child: Text(
                    "Weekly Test ",
                    style: TextStyle(
                      fontFamily: "Ubuntu",
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff000000),
                      // height: 21 / 18,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              ScoreCard(
                  correct: 133, inCorrect: 5),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                      left: 35,
                      top: 15,
                      bottom: 10),
                  child: Text(
                    "Quiz ",
                    style: TextStyle(
                      fontFamily: "Ubuntu",
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff000000),
                      // height: 21 / 18,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              ScoreCard(
                  correct: 133, inCorrect: 5),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                      left: 35,
                      top: 15,
                      bottom: 10),
                  child: Text(
                    "Previous Year Papers",
                    style: TextStyle(
                      fontFamily: "Ubuntu",
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff000000),
                      // height: 21 / 18,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              ScoreCard(
                  correct: 133, inCorrect: 5),
            ]),
      ),
    );
  }
}
