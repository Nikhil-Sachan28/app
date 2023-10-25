import 'package:flutter/material.dart';
import 'package:get/get.dart';

class After12th extends StatelessWidget {
  const After12th({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "SELECT A COURSE",
                  style: TextStyle(
                    fontFamily: "Lato",
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff333333),
                    height: 27 / 24,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            courses(Icons.settings, 'B.Tech', 70),
            courses(Icons.add, 'MBBS', 20),
            courses(Icons.book, 'LLB', 10),
            courses(Icons.brush, 'Design', 50),
            courses(Icons.personal_injury_sharp,
                'BBA', 110),
          ]),
        ),
      ),
    );
  }

  courses(IconData courseIcon, String courseName,
      int courseAvailable) {
    return Container(
      width: Get.width * 0.9,
      height: Get.height * 0.08,
      margin: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
              Radius.circular(10)),
          color: Colors.white,
          border: Border.all(width: 0.2)),
      child: Row(
          mainAxisAlignment:
              MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 10,
                ),
                Icon(
                  courseIcon,
                  size: 30,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  courseName,
                  style: const TextStyle(
                      fontSize: 17,
                      fontWeight:
                          FontWeight.bold),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 30,
                  height: 17,
                  decoration: const BoxDecoration(
                      color: Color(0xFFE8E9EA),
                      borderRadius:
                          BorderRadius.all(
                              Radius.circular(
                                  10))),
                  child: Center(
                    child: Text(
                      "$courseAvailable",
                      style: const TextStyle(
                          fontSize: 9,
                          fontWeight:
                              FontWeight.bold,
                          color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(
                  right: 10),
              child: Icon(
                Icons.arrow_forward_ios_outlined,
                size: 20,
                color: Colors.black,
              ),
            ),
          ]),
    );
  }
}
