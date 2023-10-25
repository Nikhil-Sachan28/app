// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsearch/Configs/Constants.dart';

class FaqPage extends StatefulWidget {
  const FaqPage({super.key});

  @override
  State<FaqPage> createState() => _FaqPageState();
}

class _FaqPageState extends State<FaqPage> {
  bool isShowMore = false;

  String question =
      "How to list my internship/job requiremnet on Job ${Constants.CompanyName}";

  _topSection() {
    return Container(
      // color: const Color(0xFFBAD1FF),
      width: Get.width * 1,
      color: const Color(0xFFE4E8F1),
      padding: const EdgeInsets.only(
          left: 15,
          right: 15,
          top: 25,
          bottom: 30),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 15,
          ),
          Text(
            "Frequently Asked Questions (FAQs)",
            style: TextStyle(
                fontFamily: "Avenir Next",
                fontSize: 35,
                fontWeight: FontWeight.w700,
                color: Color(0xFF000000),
                height: 1.1),
            textAlign: TextAlign.start,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Have doubts and quiries cropping up? Here are a few frequently asked questions and their answers to help you. We promise we have covered all bases!",
            style: TextStyle(
              fontFamily: "Inter",
              fontSize: 17,
              fontWeight: FontWeight.w400,
              color: Color(0xff000000),
            ),
            textAlign: TextAlign.start,
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  _questions() {
    return Container(
      // color: const Color(0xFFBAD1FF),
      width: Get.width * 1,
      // color: const Color(0xFFE4E8F1),
      padding: const EdgeInsets.only(
          left: 10,
          right: 10,
          top: 10,
          bottom: 30),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 15,
          ),
          // Text(
          //   "Frequently Asked Questions (FAQs)",
          //   style: TextStyle(
          //       fontFamily: "Avenir Next",
          //       fontSize: 20,
          //       fontWeight: FontWeight.w500,
          //       color: Color(0xFF000000),
          //       height: 1.1),
          //   textAlign: TextAlign.start,
          // ),
          // SizedBox(height: 20,),
          ListView.builder(
            physics:
                const RangeMaintainingScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: 5,
            itemBuilder: (context, index) =>
                ExpansionTile(
              childrenPadding:
                  const EdgeInsets.only(
                      bottom: 15),
              onExpansionChanged: (value) {
                setState(() {
                  isShowMore == !isShowMore;
                });
              },
              title: Text(
                "$question $index",
                style: const TextStyle(
                    fontFamily: "Avenir Next",
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF000000),
                    height: 1.1),
                textAlign: TextAlign.start,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                // overflow: isShowMore ? TextOverflow.ellipsis:TextOverflow.visible,
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0,
                      right: 15,
                      bottom: 10),
                  child: Text(
                    "Ques. : " "$question",
                    style: const TextStyle(
                        fontFamily: "Avenir Next",
                        fontSize: 17,
                        fontWeight:
                            FontWeight.w600,
                        letterSpacing: 1,
                        wordSpacing: 1,
                        color: Color(0xFF1335A1),
                        height: 1.4),
                    textAlign: TextAlign.start,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                      left: 15.0,
                      right: 15,
                      bottom: 10),
                  child: Text(
                    "But we cannot see anything when the tile is expanded. This is because we need to give the children parameter in ExpansionTile. Whatever widget we pass to the children will be shown when we expand the tile.",
                    style: TextStyle(
                        fontFamily: "Avenir Next",
                        fontSize: 17,
                        fontWeight:
                            FontWeight.w500,
                        letterSpacing: 1,
                        wordSpacing: 1,
                        color: Color(0xFF000000),
                        height: 1.4),
                    textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context)
            .scaffoldBackgroundColor,
        elevation: 1,
        centerTitle: false,
        title: const Text(
          "FAQs",
          style: TextStyle(
              color: Colors.black,
              fontSize: 17,
              fontWeight: FontWeight.w500),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 20,
          ),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          _topSection(),
          _questions()
        ]),
      ),
    );
  }
}
