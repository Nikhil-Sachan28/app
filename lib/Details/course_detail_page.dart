import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsearch/Screens/Home/homePage.dart';
import 'package:jobsearch/modals/course_res.dart';
import 'package:jobsearch/payment/payNow.dart';

class CourseDetailPage extends StatefulWidget {
  final  course;
  const CourseDetailPage({Key? key, required this.course})
      : super(key: key);

  @override
  State<CourseDetailPage> createState() =>
      _CourseDetailPageState();
}

bool isplaying = true;

class _CourseDetailPageState
    extends State<CourseDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: Get.height * 0.40,
                width: Get.width * 1,
                decoration: const BoxDecoration(
                    color: Colors.grey),
              ),
            ),
            backButton(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: Get.height * 0.65,
                width: Get.width * 1,
                decoration: const BoxDecoration(
                    borderRadius:
                        BorderRadius.only(
                            topRight:
                                Radius.circular(
                                    25),
                            topLeft:
                                Radius.circular(
                                    25)),
                    color: Colors.white),
                child: Column(
                  children: [
                    courseDetail(),
                    SizedBox(
                      height: Get.height * 0.28,
                      child:
                          SingleChildScrollView(
                        child: Column(
                          children: [
                            coursevideodetail(),
                            const SizedBox(
                              height: 20,
                            ),
                            coursevideodetail(),
                            const SizedBox(
                              height: 20,
                            ),
                            coursevideodetail(),
                            const SizedBox(
                              height: 20,
                            ),
                            coursevideodetail(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: buttomSheet(),
            )
          ],
        ),
      ),
    );
  }

  backButton() {
    return Align(
      alignment: Alignment.topLeft,
      child: InkWell(
        onTap: () {
          Get.to(const HomePage());
        },
        child: InkWell(
          onTap: () => Get.back(),
          child: Container(
              color: Colors.transparent,
              height: 30,
              width: 40,
              margin: const EdgeInsets.only(
                  left: 15, top: 30),
              child: const Center(
                  child: Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 25,
                weight: 50,
              ))),
        ),
      ),
    );
  }

  courseDetail() {
    return Container(
      margin: const EdgeInsets.only(
          top: 30, right: 20, left: 20),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Product Design v1.0",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff1f1f39),
                ),
                textAlign: TextAlign.left,
              ),
              Text(
                "₹ 299.00",
                style: TextStyle(
                  fontFamily: "Inter",
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF082FFF),
                  height: 31 / 20,
                ),
                textAlign: TextAlign.left,
              )
            ],
          ),
          Row(
            mainAxisAlignment:
                MainAxisAlignment.start,
            children: const [
              Text(
                "6h 14min · 24 Lessons",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff858597),
                  height: 18.709360122680664 / 12,
                ),
                textAlign: TextAlign.left,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "About this course",
            style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Color(0xff1f1f39),
            ),
            textAlign: TextAlign.left,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
                vertical: 10),
            child: Text(
              "Sed ut perspiciatis unde omnis iste natus error sit Sed ut perspiciatis unde omnis iste natus error ",
              style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: Color(0xff9393a3),
                // height: 37.41872024536133 / 12,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
              margin: const EdgeInsets.only(
                  bottom: 05),
              width: Get.width * 1,
              child: const Center(
                  child: Icon(
                Icons.visibility_off,
                size: 17,
              ))),
        ],
      ),
    );
  }

  coursevideodetail() {
    return Container(
      margin: const EdgeInsets.symmetric(
          horizontal: 20),
      // height: Get.height * 0.08,
      width: Get.width * 1,
      // color: Colors.grey,
      child: Row(
        mainAxisAlignment:
            MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            // width: Get.width * 0.25,
            child: Text(
              "01 ",
              style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 27,
                fontWeight: FontWeight.w500,
                color: Color(0xffb8b8d2),
                height: 37.41872024536133 / 24,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Column(
            mainAxisAlignment:
                MainAxisAlignment.center,
            crossAxisAlignment:
                CrossAxisAlignment.start,
            children: [
              const Text(
                "Welcome to the Course",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff1f1f39),
                  height: 21.827587127685547 / 14,
                ),
                textAlign: TextAlign.left,
              ),
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.start,
                children: [
                  const Text(
                    "6:10",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff006905),
                      height:
                          18.709360122680664 / 12,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "mins",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff006905),
                      height:
                          18.709360122680664 / 12,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Container(
                      margin:
                          const EdgeInsets.only(
                              left: 15),
                      height: 10,
                      width: 10,
                      child: Image.asset(
                          'assets/icondone.png')),
                ],
              ),
            ],
          ),
          Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
                color: const Color(0xFF3D5CFF),
                borderRadius:
                    BorderRadius.circular(100)
                //more than 50% of width makes circle
                ),
            child: const Center(
                child: Icon(
              Icons.play_arrow_rounded,
              color: Colors.white,
              size: 25,
            )),
          ),
        ],
      ),
    );
  }

  buttomSheet() {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        width: Get.width * 1,
        height: Get.height * 0.13,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(15),
                topLeft: Radius.circular(15)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 10,
              )
            ]),
        child: Card(
          child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceEvenly,
              children: [
                Card(
                  color: const Color(0xFFFFEBF0),
                  shape:
                      const RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.all(
                            Radius.circular(10)),
                  ),
                  child: SizedBox(
                    width: Get.width * 0.27,
                    height: 45,
                    child: const Center(
                        child: Icon(
                      Icons.star,
                      color: Colors.deepOrange,
                    )),
                  ),
                ),
                InkWell(
                  onTap: () =>
                      Get.to(const PayNow()),
                  child: Card(
                    color:
                        const Color(0xFF3D5CFF),
                    shape:
                        const RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.all(
                              Radius.circular(
                                  10)),
                    ),
                    child: SizedBox(
                      height: 45,
                      width: Get.width * 0.60,
                      child: const Center(
                          child: Text(
                        "Buy Now",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 16,
                          fontWeight:
                              FontWeight.w500,
                          color:
                              Color(0xFFF3F5FF),
                          height:
                              26.688013076782227 /
                                  16,
                        ),
                        textAlign: TextAlign.left,
                      )),
                    ),
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
