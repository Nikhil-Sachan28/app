import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsearch/Screens/Quiz/quizSubmit.dart';

class QuizStart extends StatelessWidget {
  const QuizStart({Key? key}) : super(key: key);

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
                      const Padding(
                        padding: EdgeInsets.only(
                            left: 8.0),
                        child: Text(
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
      body: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: 10.0, horizontal: 15),
        child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start,
            children: [
              topBar(),
              const Padding(
                padding: EdgeInsets.symmetric(
                    vertical: 10.0),
                child: Divider(
                  height: 10,
                  color: Colors.black45,
                ),
              ),
              const Text(
                "What is the meaning of UI UX Design ?",
                style: TextStyle(
                  fontFamily: "Ubuntu",
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff333333),
                ),
                textAlign: TextAlign.left,
              ),
              questionCard()
            ]),
      ),
      floatingActionButton: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(
                left: 25, right: 25, bottom: 10),
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
              children: [
                button(
                    true,
                    Icons
                        .arrow_back_ios_outlined),
                Container(
                  decoration: BoxDecoration(
                      borderRadius:
                          const BorderRadius.all(
                              Radius.circular(3)),
                      border: Border.all(
                          width: 1,
                          color: const Color(
                              0xFF2E9DEA))),
                  width: Get.width * .45,
                  height: 45,
                  child: FloatingActionButton(
                    elevation: 0,
                    backgroundColor:
                        const Color(0xFFFFFFFF),
                    shape: BeveledRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(
                                3)),
                    onPressed: () {
                      Get.to(const QuizSubmit());
                    },
                    child: const Center(
                      child: Text(
                        "Submit Quiz",
                        style: TextStyle(
                            fontFamily: "Ubuntu",
                            fontSize: 14,
                            fontWeight:
                                FontWeight.w500,
                            color: Color(
                                0xFF2E9DEA)),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                ),
                button(
                    false,
                    Icons
                        .arrow_forward_ios_outlined),
              ],
            ),
          )),
      floatingActionButtonLocation:
          FloatingActionButtonLocation
              .centerFloat,
    );
  }

  Widget topBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            color: Colors.white,
            height: Get.width * 0.1,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(
                      right: 10),
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius:
                          BorderRadius.circular(
                              50)),
                  width: Get.width * 0.1,
                  height: Get.width * 0.09,
                  child: Center(
                    child: Text('$index'),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget questionCard() {
    return const Card(
      semanticContainer: true,
      elevation: 0,
      child: ListTile(
        horizontalTitleGap: 7,
        dense: true,
        contentPadding: EdgeInsets.zero,
        leading: CircleAvatar(
          backgroundColor: Color(0xFF333333),
          child: Text('A'),
        ),
        title: Text(
          "User Interfoce and User Experience",
          style: TextStyle(
            fontFamily: "Ubuntu",
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: Color(0xff333333),
          ),
          textAlign: TextAlign.left,
        ),
      ),
    );
  }

  Widget button(
      bool isAvailable, IconData buttonIcon) {
    return SizedBox(
      height: 45,
      width: 45,
      child: FloatingActionButton(
        elevation: 0,
        heroTag: 'back',
        onPressed: () {
          /* Do something */
        },
        backgroundColor: isAvailable
            ? const Color(0xFF649AEA)
            : const Color(0xFFD4D4D4),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        child: Icon(
          buttonIcon,
          size: 20,
        ),
      ),
    );
  }
}
