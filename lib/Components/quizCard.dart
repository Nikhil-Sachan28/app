// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuizCard extends StatelessWidget {
  String buttonName;
  void Function() redirectPage;

  QuizCard({
    Key? key,
    required this.buttonName,
    required this.redirectPage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius:
                BorderRadius.circular(7)),
        height: Get.height * 0.25,
        width: Get.width * 0.40,
        child: Column(children: [
          Container(
            color: Colors.black26,
            height: Get.height * 0.135,
          ),
          Container(
            color: Colors.white,
            height: Get.height * 0.06,
            child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    "Questions\n 100",
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight:
                            FontWeight.w500),
                  ),
                  Text(
                    "Marks\n 100",
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight:
                            FontWeight.w500),
                  ),
                  Text(
                    "Minutes\n 100",
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight:
                            FontWeight.w500),
                  ),
                ]),
          ),
          SizedBox(
            height: Get.height * 0.055,
            child: Center(
              child: Container(
                margin:
                    const EdgeInsets.symmetric(
                        horizontal: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(
                            10)),
                height: Get.height * 0.031,
                width: Get.width * 0.25,
                child: Center(
                  child: InkWell(
                    onTap: redirectPage,
                    child: Text(
                      buttonName,
                      style: const TextStyle(
                          color: Colors.black),
                    ),
                  ),
                ),
              ),
            ),
          )
        ]),
      )
    ]);
  }
}
