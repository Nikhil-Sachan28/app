// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class ScoreCard extends StatelessWidget {
  int correct;
  int inCorrect;

  ScoreCard(
      {Key? key,
      required this.correct,
      required this.inCorrect})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shadowColor: Colors.black26,
      child: Container(
        height: Get.height * 0.20,
        width: Get.width * 0.85,
        decoration: BoxDecoration(
          color: const Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
                color: Colors.black12,
                blurRadius: 10.0,
                spreadRadius: 5),
          ],
        ),
        child: Row(children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(
                top: 8.0, left: 15),
            child: Column(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [
                const Text(
                  "Exam name",
                  style: TextStyle(
                    fontFamily: "Kanit",
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff27093e),
                  ),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(),
                Row(
                  children: [
                    Container(
                      width: 40,
                      padding: const EdgeInsets
                              .symmetric(
                          horizontal: 7,
                          vertical: 2),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius
                                  .circular(5),
                          color: const Color(
                              0xFFA75BF4)),
                      child: Text(
                        '$correct',
                        style: const TextStyle(
                            fontFamily: "Kanit",
                            fontSize: 12,
                            fontWeight:
                                FontWeight.w600,
                            color: Color(
                                0xFFFFFFFF)),
                        textAlign:
                            TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "Correct",
                      style: TextStyle(
                        fontFamily: "Kanit",
                        fontSize: 13,
                        fontWeight:
                            FontWeight.w500,
                        color: Color(0xff1d1d23),
                        height: 19 / 13,
                      ),
                      textAlign: TextAlign.left,
                    )
                  ],
                ),
                const SizedBox(),
                Row(
                  children: [
                    Container(
                      width: 40,
                      padding: const EdgeInsets
                              .symmetric(
                          horizontal: 7,
                          vertical: 2),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius
                                  .circular(5),
                          color: const Color(
                              0xFFF7983E)),
                      child: Text(
                        '$inCorrect',
                        style: const TextStyle(
                            fontFamily: "Kanit",
                            fontSize: 12,
                            fontWeight:
                                FontWeight.w600,
                            color: Color(
                                0xFFFFFFFF)),
                        textAlign:
                            TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "InCorrect",
                      style: TextStyle(
                        fontFamily: "Kanit",
                        fontSize: 13,
                        fontWeight:
                            FontWeight.w500,
                        color: Color(0xff1d1d23),
                        height: 19 / 13,
                      ),
                      textAlign: TextAlign.left,
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                // SizedBox(),
              ],
            ),
          )),
          Container(
            margin:
                const EdgeInsets.only(right: 15),
            width: Get.height * .16,
            height: Get.height * .16,
            child: CircularStepProgressIndicator(
              totalSteps: 100,
              currentStep: 74,
              stepSize: 10,
              selectedColor:
                  const Color(0xFFA75BF4),
              unselectedColor:
                  const Color(0xFFF7983E),
              padding: 0,
              width: Get.height * .16,
              height: Get.height * .16,
              selectedStepSize: 15,
              roundedCap: (_, __) => true,
              child: Column(
                  mainAxisAlignment:
                      MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Total question",
                      style: TextStyle(
                        fontFamily: "Kanit",
                        fontSize: 10,
                        fontWeight:
                            FontWeight.w500,
                        color: Color(0xff8a8a8a),
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      "138",
                      style: TextStyle(
                        fontFamily: "Public Sans",
                        fontSize: 20,
                        fontWeight:
                            FontWeight.w800,
                        color: Color(0xff1d1d23),
                      ),
                      textAlign: TextAlign.left,
                    )
                  ]),
            ),
          ),
        ]),
      ),
    );
  }
}
