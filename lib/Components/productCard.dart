// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductCard extends StatelessWidget {
  String courseName;
  int lesson;
  int student;
  int star;
  String level;
  String courseimage;
  void Function() onTapCommand;

  ProductCard({
    super.key,
    required this.courseName,
    required this.lesson,
    required this.student,
    required this.star,
    required this.level,
    required this.courseimage,
    required this.onTapCommand,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: Get.width * 0.9,
        child: Card(
          color: Colors.grey[200],
          child: Container(
            margin: const EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment:
                  MainAxisAlignment.start,
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [
                Container(
                  // margin: EdgeInsets.all(08),
                  height: Get.height * 0.28,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            courseimage),
                        fit: BoxFit.fill,
                      ),
                      borderRadius:
                          BorderRadius.circular(
                              5)),
                ),
                Container(
                  margin: const EdgeInsets.all(7),
                  child: Column(
                    children: [
                      Align(
                        alignment:
                            Alignment.bottomLeft,
                        child: Text(
                          courseName,
                          style: const TextStyle(
                            overflow: TextOverflow.ellipsis,
                              fontWeight:
                                  FontWeight.w500,
                              fontSize: 15,
                              color: Color(
                                  0xFF080808)),
                          maxLines: 1,
                        ),
                      ),
                      Row(
                        mainAxisAlignment:
                            MainAxisAlignment
                                .spaceEvenly,
                        children: [
                          courseDetail(
                              'Lesson',
                              Icons.play_lesson,
                              lesson),
                          courseDetail(
                              'Student',
                              Icons.person,
                              student),
                          courseLevel("Beginner",
                              Icons.leaderboard)
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment
                          .spaceBetween,
                  children: [
                    InkWell(
                      onTap: onTapCommand,
                      child: startCourseButton(),
                    ),
                    courseStar(star),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget courseDetail(String name, IconData icons,
      int quantities) {
    return Padding(
      padding: const EdgeInsets.only(
          top: 14.0, right: 10),
      child: Row(
        crossAxisAlignment:
            CrossAxisAlignment.center,
        mainAxisAlignment:
            MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            icons,
            color: Colors.grey,
            size: 20,
          ),
          const SizedBox(
            width: 6,
          ),
          Text(
            "$name : $quantities",
            style: GoogleFonts.roboto(
                color: const Color(0xFF454545),
                fontWeight: FontWeight.bold,
                fontSize: 12),
          )
        ],
      ),
    );
  }

  Widget courseLevel(
      String level, IconData icons) {
    return Padding(
      padding: const EdgeInsets.only(top: 14.0),
      child: Row(
        crossAxisAlignment:
            CrossAxisAlignment.center,
        mainAxisAlignment:
            MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            icons,
            color: Colors.grey,
            size: 18,
          ),
          const SizedBox(
            width: 6,
          ),
          Text(
            level,
            style: GoogleFonts.roboto(
                color: const Color(0xFF454545),
                fontWeight: FontWeight.bold,
                fontSize: 12),
          ),
        ],
      ),
    );
  }

  startCourseButton() {
    return Container(
      width: Get.height * 0.22,
      height: Get.height * 0.065,
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius:
              BorderRadius.circular(10)),
      child: Container(
        margin: const EdgeInsets.symmetric(
            horizontal: 10),
        child: Row(
          mainAxisAlignment:
              MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Start Course",
              style: GoogleFonts.roboto(
                  color: const Color(0xFFF4F3FD),
                  fontWeight: FontWeight.bold,
                  fontSize: 14),
            ),
            const Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.white,
              size: 15,
            )
          ],
        ),
      ),
    );
  }

  courseStar(int star) {
    return SizedBox(
      width: 65,
      height: 45,
      child: Image.asset(
        "assets/star$star.png",
        colorBlendMode: BlendMode.color,
      ),
    );
  }
}
