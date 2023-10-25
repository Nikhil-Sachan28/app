// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsearch/Components/instituteCard.dart';
import 'package:jobsearch/DefaultPage/testPage.dart';
import 'package:jobsearch/Screens/Institutes/redirectPageList/liveClassListView.dart';
import 'package:jobsearch/Stationary/Screen/categoryPage.dart';

import '../Course/studyPage.dart';

class InstituteDetail extends StatelessWidget {
  var institute;
  InstituteDetail({Key? key, required this.institute}) : super(key: key);
  List<String> listName = [
    "Courses",
    "Test Series",
    "Previous Year Papers",
    "Current Affairs",
    "Quiz",
    "Free Weekly Test",
    "Books",
    "Live Class",
    "Download"
  ];
  List<Widget> redirectList = [
    StudyPage(),
    TestPage(
      pageTitle: " Test Series",
      buttonName: "View Detail",
      onTapCommand: () {},
    ),
    TestPage(
      pageTitle: "Previous Year Papers",
      buttonName: "Attempt",
      onTapCommand: () {},
    ),
    TestPage(
      pageTitle: "Current Affairs",
      buttonName: "View Details",
      onTapCommand: () {},
    ),
    TestPage(
      pageTitle: "Quiz",
      buttonName: "Play Now",
      onTapCommand: () {},
    ),
    TestPage(
      pageTitle: "Free Weekly Test",
      buttonName: "View Details",
      onTapCommand: () {},
    ),
    const CategoryPage(),
    LiveClassListView(),
    TestPage(
      pageTitle: "Download",
      buttonName: "View Details",
      onTapCommand: () {},
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: InkWell(
        onTap: () => Get.back(),
        child: const Icon(
            Icons.arrow_back_ios_outlined),
      )),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.spaceBetween,
          // crossAxisAlignment:
          //     CrossAxisAlignment.center,
          children: [
            InstituteCard(showDetail: false, institute: institute),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              child: GridView.builder(
                padding:
                    const EdgeInsets.symmetric(
                        horizontal: 10),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: listName.length,
                gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        crossAxisCount: 3),
                itemBuilder: (context, index) =>
                    InkWell(
                  onTap: () =>
                      Get.to(redirectList[index]),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius:
                            BorderRadius.circular(
                                10)),
                    child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment
                                .center,
                        mainAxisAlignment:
                            MainAxisAlignment
                                .spaceEvenly,
                        children: [
                          const Icon(Icons.book),
                          Padding(
                            padding:
                                const EdgeInsets
                                    .all(8.0),
                            child: Text(
                              listName[index],
                              textAlign: TextAlign
                                  .center,
                              style: const TextStyle(
                                  fontWeight:
                                      FontWeight
                                          .w500),
                            ),
                          )
                        ]),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
