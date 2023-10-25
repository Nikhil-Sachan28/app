import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsearch/Screens/Quiz/quizStart.dart';

class Quiz extends StatelessWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF3344DA),
        leading: SafeArea(
            child: InkWell(
          onTap: () => Get.back(),
          child: const Icon(
            Icons.arrow_back_outlined,
            // size: 20,
          ),
        )),
        actions: const <Widget>[],
        bottom: PreferredSize(
            preferredSize:
                const Size.fromHeight(25),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 10, right: 10),
              child: Column(
                mainAxisAlignment:
                    MainAxisAlignment.end,
                children: [
                  const Text(
                    "GET 100 Points",
                    style: TextStyle(
                      fontFamily: "Nunito",
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFFFFFFF),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment
                            .spaceBetween,
                    children: [
                      const Text(
                        "UI UX Design Quiz",
                        style: TextStyle(
                          fontFamily: "Ubuntu",
                          fontSize: 18,
                          fontWeight:
                              FontWeight.w500,
                          color:
                              Color(0xFFFFFFFF),
                          height: 1.5,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Row(
                        children: [
                          TextButton.icon(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.star,
                                size: 22,
                                color: Colors
                                    .orangeAccent,
                              ),
                              label: const Text(
                                "4.8",
                                style: TextStyle(
                                  fontFamily:
                                      "Nunito",
                                  fontSize: 18,
                                  fontWeight:
                                      FontWeight
                                          .w600,
                                  color: Color(
                                      0xFFFFFFFF),
                                  height: 1.5,
                                ),
                                textAlign:
                                    TextAlign
                                        .left,
                              )),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: 10.0, horizontal: 15),
        child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start,
            children: [briefMeta(), quizPoint()]),
      ),
      floatingActionButton: Align(
        alignment: Alignment.bottomCenter,
        child: SizedBox(
          width: Get.width * 0.85,
          height: 45,
          child: FloatingActionButton(
            elevation: 0,
            backgroundColor:
                const Color(0xFF3D5CFF),
            shape: BeveledRectangleBorder(
                borderRadius:
                    BorderRadius.circular(3)),
            onPressed: () {
              Get.to(const QuizStart());
            },
            child: const Center(
              child: Text("Start Quiz"),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation
              .centerFloat,
    );
  }

// Quiz brief Explation
  Widget quizPoint() {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [
          Container(
            margin:
                const EdgeInsets.only(top: 20),
            child: const Text(
              "Please read the text below carefully so you can understand it",
              style: TextStyle(
                fontFamily: "Nunito",
                fontSize: 13,
                fontWeight: FontWeight.w700,
                color: Color(0xff333333),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          points(
            "10 point awarded for a correct answer and no marks for a incorrect answer",
          ),
          points(
            "10 point awarded for a correct answer and no marks for a incorrect answer",
          ),
        ],
      ),
    );
  }

  Widget briefMeta() {
    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.start,
      children: [
        const Text(
          "Brief explanation about this quiz",
          style: TextStyle(
            fontFamily: "Nunito",
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Color(0xff333333),
          ),
          textAlign: TextAlign.left,
        ),
        quizbrief(const Icon(
            Icons.text_snippet_outlined)),
        quizbrief(const Icon(
            Icons.text_snippet_outlined)),
        quizbrief(const Icon(
            Icons.text_snippet_outlined)),
      ],
    );
  }

  Widget points(String meta) {
    return Container(
      margin: const EdgeInsets.only(
        top: 10,
      ),
      child: Row(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [
          const Icon(
            Icons.circle,
            size: 08,
          ),
          const SizedBox(
            width: 6,
          ),
          Expanded(
            child: Text(
              meta,
              style: const TextStyle(
                fontFamily: "DM Sans",
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(0xff514a6b),
              ),
              textAlign: TextAlign.start,
            ),
          )
        ],
      ),
    );
  }

  Widget quizbrief(Icon briefIcon) {
    return Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(
        height: 55,
        child: Card(
          semanticContainer: true,
          elevation: 0,
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor:
                  const Color(0xFF333333),
              child: briefIcon,
            ),
            title: const Text(
              "10 Question",
              style: TextStyle(
                fontFamily: "Ubuntu",
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Color(0xff333333),
              ),
              textAlign: TextAlign.left,
            ),
            subtitle: const Text(
              "10 point for a correct answer",
              style: TextStyle(
                fontFamily: "Nunito",
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: Color(0xff999999),
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ),
      ),
    );
  }
}
