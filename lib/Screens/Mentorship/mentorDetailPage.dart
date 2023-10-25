import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsearch/Controller/mentor_controller.dart';

import '../../Controller/job_controller.dart';

class MentorDetailPage extends StatefulWidget {
  const MentorDetailPage({Key? key}) : super(key: key);

  @override
  State<MentorDetailPage> createState() =>
      _MentorDetailPageState();
}

class _MentorDetailPageState
    extends State<MentorDetailPage> {
  bool isReadmore = false;

  _aboutMentor() {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 10),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.center,
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "About Mentor",
              style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 17,
                fontWeight: FontWeight.w700,
                color: Color(0xff1f1f39),
                height: 3,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          buildText(
              "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)."),
          const SizedBox(
            height: 5,
          ),
          Container(
            margin:
                const EdgeInsets.only(top: 10),
            height: 20,
            child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    // toggle the bool variable true or false
                    isReadmore = !isReadmore;
                  });
                },
                child: Text((isReadmore
                    ? 'Read Less'
                    : 'Read More'))),
          ),
          const SizedBox(
            height: 5,
          )
        ],
      ),
    );
  }

  _education() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(
          horizontal: 10),
      child: Column(
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Education",
              style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Color(0xff1f1f39),
                height: 3,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          ListView.builder(
            physics: const RangeMaintainingScrollPhysics(),
            itemCount: 2,
            shrinkWrap: true,
            itemBuilder: (context, index) =>
                experienceCard(
                    "BITS PILANI",
                    "Bachelor of Engineering",
                    "2018 - 2022"),
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }

  _workExperience() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(
          horizontal: 10),
      child: Column(
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Work Experience",
              style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Color(0xff1f1f39),
                height: 3,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          ListView.builder(
            physics: const RangeMaintainingScrollPhysics(),
            itemCount: 2,
            shrinkWrap: true,
            itemBuilder: (context, index) =>
                experienceCard(
                    "Software Engineer",
                    "Adobe Ltd",
                    "2020 - 2022"),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              size: 18,
            )),
        title: const Text("Mentors"),
      ),
      body:SingleChildScrollView(
        child: Container(
          color: Colors.white10,
          child: Column(
            children: [
              SizedBox(
                // height: Get.height * 0.30,
                width: Get.width * 1,
                child: Wrap(children: [
                  SizedBox(
                    height: Get.height * 0.18,
                    width: Get.width * 1,
                    child: Stack(
                      children: [
                        Align(
                            alignment: Alignment
                                .topCenter,
                            child: Container(
                              color: Colors.blue,
                              height: Get.height *
                                  0.10,
                            )),
                        const Align(
                          alignment:
                          Alignment.topLeft,
                        ),
                        Align(
                          alignment: Alignment
                              .bottomLeft,
                          child: Container(
                            margin:
                            const EdgeInsets
                                .only(
                                left: 10),
                            width: 90,
                            height: 90,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  width: 4,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                      spreadRadius:
                                      2,
                                      blurRadius:
                                      10,
                                      color: Colors
                                          .white
                                          .withOpacity(
                                          1),
                                      offset:
                                      const Offset(
                                          0,
                                          10))
                                ],
                                shape: BoxShape.circle,
                                image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                      "https://images.pexels.com/photos/10057618/pexels-photo-10057618.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                                    ))),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    height: 10,
                    thickness: 0.5,
                  ),
                  Column(
                    mainAxisAlignment:
                    MainAxisAlignment
                        .spaceEvenly,
                    children: [
                      Align(
                        alignment:
                        Alignment.topLeft,
                        child: Container(
                          margin: const EdgeInsets
                              .only(left: 10),
                          child: const Text(
                            "Devesh Khatuwal",
                            style: TextStyle(
                              fontFamily:
                              "Quicksand",
                              fontSize: 18,
                              fontWeight:
                              FontWeight.w500,
                              color: Color(
                                  0xff2d2d2d),
                            ),
                            textAlign:
                            TextAlign.center,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Align(
                        alignment:
                        Alignment.topLeft,
                        child: Container(
                          margin: const EdgeInsets
                              .only(
                              left: 10,
                              right: 10),
                          child: const Text(
                            "SDE | JAVA DEVELOPER | TRAINER | ANDROID DEVELOPER | FULLSTACK DEVELOPER",
                            style: TextStyle(
                              letterSpacing: 1,
                              fontFamily:
                              "Poppins",
                              fontSize: 14,
                              fontWeight:
                              FontWeight.w400,
                              color: Color(
                                  0xFF000000),
                            ),
                            maxLines: 3,
                            overflow: TextOverflow
                                .ellipsis,
                            textAlign:
                            TextAlign.start,
                          ),
                        ),
                      ),
                      const Divider(
                        height: 15,
                        thickness: 0.5,
                      ),
                      IntrinsicHeight(
                        child: Row(
                          children: [
                            Expanded(
                                child: TextButton
                                    .icon(
                                    onPressed:
                                        () {},
                                    icon:
                                    const Icon(
                                      Icons
                                          .cases_outlined,
                                      color: Color(
                                          0xFF87A77E),
                                    ),
                                    label:
                                    const Text(
                                      "3 years",
                                      style:
                                      TextStyle(
                                        fontFamily:
                                        "Quicksand",
                                        fontSize:
                                        14,
                                        fontWeight:
                                        FontWeight.w700,
                                        color:
                                        Color(0xff2d2d2d),
                                      ),
                                      textAlign:
                                      TextAlign.center,
                                    ))),
                            const VerticalDivider(
                              thickness: 2,
                            ),
                            Expanded(
                                child: TextButton
                                    .icon(
                                    onPressed:
                                        () {},
                                    icon:
                                    const Icon(
                                      Icons
                                          .star,
                                      color: Color(
                                          0xFF817FEC),
                                    ),
                                    label:
                                    const Text(
                                      "4.0",
                                      style:
                                      TextStyle(
                                        fontFamily:
                                        "Quicksand",
                                        fontSize:
                                        15,
                                        fontWeight:
                                        FontWeight.w700,
                                        color:
                                        Color(0xff2d2d2d),
                                      ),
                                      textAlign:
                                      TextAlign.center,
                                    ))),
                            const VerticalDivider(
                              thickness: 1,
                            ),
                            const Expanded(
                              child: Text(
                                "12 Reviews",
                                style: TextStyle(
                                  decoration:
                                  TextDecoration
                                      .underline,
                                  fontFamily:
                                  "Quicksand",
                                  fontSize: 15,
                                  fontWeight:
                                  FontWeight
                                      .w700,
                                  color: Color(
                                      0xff2d2d2d),
                                ),
                                textAlign:
                                TextAlign
                                    .center,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment:
                        MainAxisAlignment
                            .spaceBetween,
                        children: [
                          const Padding(
                            padding:
                            EdgeInsets.only(
                                left: 10.0),
                            child: CircleAvatar(
                              child: Icon(
                                  Icons.facebook),
                            ),
                          ),
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius:
                                BorderRadius
                                    .circular(
                                    10.0),
                                //or 15.0
                                child: Container(
                                  height: 35.0,
                                  width: 35.0,
                                  color: const Color(
                                      0xFF4A8EF2),
                                  child: const Icon(
                                      Icons
                                          .favorite_border_outlined,
                                      color: Colors
                                          .white,
                                      size: 20.0),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              ClipRRect(
                                borderRadius:
                                BorderRadius
                                    .circular(
                                    10.0),
                                //or 15.0
                                child: Container(
                                  height: 35.0,
                                  width: 35.0,
                                  color: const Color(
                                      0xFF4A8EF2),
                                  child: const Icon(
                                      Icons.share,
                                      color: Colors
                                          .white,
                                      size: 20.0),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ]),
              ),
              _aboutMentor(),
              _education(),
              _workExperience(),
            ],
          ),
        ),
      ),
    );
  }

  Widget experienceCard(String title,
      String subtitle, String timeline) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Container(
          decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.black45),
              borderRadius:
                  BorderRadius.circular(5)),
          height: 60,
          width: 60,
          child: const Icon(
            Icons.book_outlined,
            size: 50,
          )),
      title: Text(
        title,
        style: const TextStyle(
          fontFamily: "Poppins",
          fontSize: 17,
          fontWeight: FontWeight.w700,
          color: Color(0xff1f1f39),
        ),
      ),
      subtitle: Text(
        "$subtitle\n$timeline",
        style: const TextStyle(
          fontFamily: "Poppins",
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Color(0xff1f1f39),
        ),
      ),
    );
  }

  Widget buildText(String text) {
    // if read more is false then show only 3 lines from text
    // else show full text
    final lines = isReadmore ? null : 3;
    return Text(
      text,
      style: const TextStyle(fontSize: 15),
      maxLines: lines,
      // overflow properties is used to show 3 dot in text widget
      // so that user can understand there are few more line to read.
      overflow: isReadmore
          ? TextOverflow.visible
          : TextOverflow.ellipsis,
    );
  }
}
