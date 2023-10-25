import 'package:flutter/material.dart';
import 'package:jobsearch/Components/categoryComponent.dart';
import 'package:get/get.dart';
import 'package:jobsearch/DefaultPage/testPage.dart';

class PracticeMainPage extends StatelessWidget {
  const PracticeMainPage({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: const Color(0xffffffff),
        leading: InkWell(
          onTap: () => Get.back(),
          child: const Icon(
              Icons.arrow_back_ios_outlined,
              color: Color(0xFF1D4F84)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
            left: 15.0, right: 15),
        child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Practice",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color(0xFF1D446E),
                    fontSize: 23,
                    fontWeight: FontWeight.w600),
              ),
              const Padding(
                padding:
                    EdgeInsets.only(right: 15),
                child: Divider(
                  height: 20,
                  thickness: 2,
                  color: Color(0xFFEAC156),
                ),
              ),
              const Text(
                "Practice Quizs and take Weekly Test",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color(0xFF1D446E),
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                width: Get.width * 0.9,
                height: Get.height * 0.6,
                child: GridView(
                  gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 1.2,
                          mainAxisSpacing: 15,
                          crossAxisSpacing: 15,
                          crossAxisCount: 2),
                  children: [
                    CategoryComponent(
                        isPadding: true,
                        fontsize: 15,
                        alignment:
                            Alignment.topLeft,
                        containerHeight: 0.12,
                        redirectPage: () =>
                            Get.to(TestPage(
                              buttonName:
                                  "Attempt Now",
                              pageTitle:
                                  "MCQ Mock Test",
                              onTapCommand: () {},
                            )),
                        categoryText:
                            "MCQ-Based\nMock-test"),
                    CategoryComponent(
                        isPadding: true,
                        alignment:
                            Alignment.topLeft,
                        containerHeight: 0.12,
                        redirectPage: () =>
                            Get.to(TestPage(
                              buttonName:
                                  "Attempt Now",
                              pageTitle: "Test",
                              onTapCommand: () {},
                            )),
                        categoryText: "Test"),
                    CategoryComponent(
                        isPadding: true,
                        alignment:
                            Alignment.topLeft,
                        containerHeight: 0.12,
                        redirectPage: () =>
                            Get.to(TestPage(
                              buttonName:
                                  "Attempt Now",
                              pageTitle: "Quiz",
                              onTapCommand: () {},
                            )),
                        categoryText: "Quiz"),
                    CategoryComponent(
                        isPadding: true,
                        alignment:
                            Alignment.topLeft,
                        containerHeight: 0.10,
                        redirectPage: () =>
                            Get.to(TestPage(
                              buttonName:
                                  "Attempt Now",
                              pageTitle:
                                  "Mock Interviews",
                              onTapCommand: () {},
                            )),
                        categoryText:
                            "Mock Interview"),
                  ],
                ),
              ),
            ]),
      ),
    );
  }
}
