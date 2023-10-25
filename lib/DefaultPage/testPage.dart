// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Components/SearchBar.dart'as searchbar;
import '../Components/quizCard.dart';
import '../Components/topFilter.dart';
import '../Screens/Quiz/quiz.dart';

class TestPage extends StatelessWidget {
  String pageTitle;
  String buttonName;
  void Function() onTapCommand;

  TestPage(
      {Key? key,
      required this.pageTitle,
      this.buttonName = "View Details",
      required this.onTapCommand})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF3D5CFF),
        leading: InkWell(
            onTap: () => Get.back(),
            child: const Icon(
                Icons.arrow_back_outlined)),
        title: Text(pageTitle),
        centerTitle: true,
        bottom: PreferredSize(
            preferredSize:
                const Size.fromHeight(30),
            child: Padding(
              padding: const EdgeInsets.only(
                  bottom: 10, top: 10),
              child: searchbar.SearchBar(
                hintText: "Find $pageTitle",
              ),
            )),
      ),
      body: Column(
        crossAxisAlignment:
            CrossAxisAlignment.center,
        children: [
          TopFilter(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 10.0, right: 10),
              child: GridView.builder(
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                scrollDirection: Axis.vertical,
                gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        childAspectRatio:
                            0.85 // childAspectRatio: 1,
                        ),
                itemBuilder: (context, index) =>
                    QuizCard(
                        redirectPage: () =>
                            Get.to(const Quiz()),
                        buttonName: buttonName),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
