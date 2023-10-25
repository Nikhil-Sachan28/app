// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../modals/institute_list_res.dart';

class InstituteCard extends StatefulWidget {
  bool showDetail;
  InstituteListRes? institute;

  InstituteCard(
      {Key? key, required this.showDetail, required this.institute})
      : super(key: key);

  @override
  State<InstituteCard> createState() =>
      _InstituteCardState();
}

class _InstituteCardState
    extends State<InstituteCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * .85,
      decoration: BoxDecoration(
          border: Border.all(
              width: 0.2, color: Colors.black26)),
      // color: Colors.grey,
      child: IntrinsicHeight(
        child: Column(children: [
          instituteImage(),
          const Divider(
            height: 2,
            color: Colors.black45,
          ),
          widget.showDetail
              ? Expanded(
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets
                                    .symmetric(
                                horizontal: 5,
                                vertical: 5),
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment
                                      .spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    const Text(
                                      "COURSE",
                                      style: TextStyle(
                                          fontWeight:
                                              FontWeight
                                                  .bold,
                                          fontSize:
                                              12),
                                    ),
                                    courseButton(
                                        "CAT"),
                                    courseButton(
                                        "NMAT"),
                                    courseButton(
                                        "SNAP"),
                                  ],
                                ),
                                const Text(
                                  "+5 courses",
                                  style: TextStyle(
                                      fontWeight:
                                          FontWeight
                                              .w300,
                                      fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets
                                    .symmetric(
                                horizontal: 5,
                                vertical: 5),
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment
                                      .spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    const Text(
                                      "CENTERS",
                                      style: TextStyle(
                                          fontWeight:
                                              FontWeight
                                                  .bold,
                                          fontSize:
                                              11),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(right: 10),
                                      child: Text(
                                        widget.institute?.location??"",
                                        style: const TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    )
                                    // centerName(
                                    //     "NOIDA"),
                                    // centerName(
                                    //     "MUMBAI"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        height: 2,
                        color: Colors.black45,
                      ),
                      Container(
                        height: 25,
                      ),
                      info(),
                      enrollbuttons()
                    ],
                  ),
                )
              : const SizedBox()
        ]),
      ),
    );
  }

  Widget enrollbuttons() {
    return Container(
      height: Get.height * 0.05,
      decoration: BoxDecoration(
          border: Border.all(
              width: 0.2, color: Colors.black45)),
      child: Row(
        children: [
          Expanded(
            child: Container(
              color: const Color(0xFF0057FF),
              child: Center(
                  child: TextButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.notes,
                  size: 13,
                  color: Colors.white,
                ),
                label: const Text(
                  "ENROLL NOW",
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.white),
                ),
              )),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              child: Center(
                  child: TextButton.icon(
                onPressed: () {},
                icon: const Icon(
                    Icons.file_download_rounded,
                    size: 13,
                    color: Color(0xFFFF7900)),
                label: const Text(
                  "BROCHURE",
                  style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFFFF7900)),
                ),
              )),
            ),
          ),
        ],
      ),
    );
  }

  Widget info() {
    return Container(
      color: Colors.grey[300],
      width: Get.width * .85,
      height: 25,
      child: Center(
        child: Row(
          mainAxisAlignment:
              MainAxisAlignment.center,
          children: [
            Text(
              "INFO  ",
              style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: Colors.black45),
              textAlign: TextAlign.left,
            ),
            Text(
              "COURSES & FEES ",
              style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: Colors.black45),
              textAlign: TextAlign.left,
            ),
          ],
        ),
      ),
    );
  }

  Widget instituteImage() {
    return Column(
      children: [
        Container(
          height: Get.height * 0.20,
          color: Colors.white60,
          child: Stack(children: [
            // Container(
            //   margin: const EdgeInsets.all(2),
            //   decoration: BoxDecoration(
            //       color: Colors.cyan,
            //       border: Border.all(
            //           width: 0.5,
            //           color: Colors.black)),
            //   height: Get.height * .18,
            //   // child: Image.network("https://imgs.search.brave.com/1499lEtdGnDZEarIAs_vkqaNXbNcKLlg1TRpK21itsU/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9ndW1s/ZXQuYXNzZXR0eXBl/LmNvbS9mcmVlcHJl/c3Nqb3VybmFsLzIw/MjMtMTAvYTEwOTEw/OGQtNWMyMS00Mjg1/LThkZmUtYTY0YTcw/ZDNhYTU0L1VudGl0/bGVkX2Rlc2lnbl9f/MzZfLmpwZw"),
            // ),
            Align(
              alignment: Alignment.center,
              child: Container(
                margin:
                    const EdgeInsets.symmetric(
                        horizontal: 15),
                color: Colors.cyan,
                width: Get.width * .8 ,
                height: Get.height * .2  ,
                child: Image.network("https://imgs.search.brave.com/1499lEtdGnDZEarIAs_vkqaNXbNcKLlg1TRpK21itsU/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9ndW1s/ZXQuYXNzZXR0eXBl/LmNvbS9mcmVlcHJl/c3Nqb3VybmFsLzIw/MjMtMTAvYTEwOTEw/OGQtNWMyMS00Mjg1/LThkZmUtYTY0YTcw/ZDNhYTU0L1VudGl0/bGVkX2Rlc2lnbl9f/MzZfLmpwZw"),
              ),
            )
          ]),
        ),
        Container(
          margin: const EdgeInsets.symmetric(
              horizontal: 5, vertical: 10),
          // child: Row(
          //   mainAxisAlignment:
          //       MainAxisAlignment.spaceBetween,
          //   children: [
              child : Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.institute?.intituteName??"",
                    style: TextStyle(
                        fontWeight:
                            FontWeight.bold,
                        fontSize: 15,
                        color: Color(0xFFFF7900)),
                    textAlign: TextAlign.left,
                  ),
                  Container(
                      height: 20,
                      width: 2, ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "TOTAL",
                        style: TextStyle(
                            fontWeight:
                            FontWeight.bold,
                            fontSize: 15  ,
                            color: Color(0xFF9B9B9B)),
                      ),
                      Text(
                        "₹38000",
                        style: TextStyle(
                            fontWeight:
                            FontWeight.bold,
                            fontSize: 15,),
                        textAlign: TextAlign.left,
                      ),

                    ],
                  ),
                  // Text(
                  //   "4 Other Couching Programs",
                  //   style: TextStyle(
                  //       fontWeight:
                  //           FontWeight.bold,
                  //       fontSize: 10,
                  //       color: Color(0xFF9B9B9B)),
                  // ),
                ],
              ),
              // Container(
              //     height: 20,
              //     width: 2,
              //     color: Colors.black26),
              // Column(
              //   crossAxisAlignment:
              //       CrossAxisAlignment.start,
              //   children: [
              //     Text(
              //       "₹38000",
              //       style: TextStyle(
              //           fontWeight:
              //               FontWeight.bold,
              //           fontSize: 15,
              //           color: Color(0xFFFF7900)),
              //       textAlign: TextAlign.left,
              //     ),
              //     Text(
              //       "TOTAL",
              //       style: TextStyle(
              //           fontWeight:
              //               FontWeight.bold,
              //           fontSize: 10,
              //           color: Color(0xFF9B9B9B)),
              //     ),
              //   ],
              // ),
            // ],
          // ),
        ),
      ],
    );
  }

  Widget centerName(String centerName) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      child: Text(
        centerName,
        style: const TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w400),
      ),
    );
  }

  Widget courseButton(String courseName) {
    return Container(
      margin: const EdgeInsets.only(left: 7),
      padding: const EdgeInsets.symmetric(
          horizontal: 7),
      height: 20,
      // width: 50,
      decoration: BoxDecoration(
          border: Border.all(
              width: 1, color: Colors.black45),
          borderRadius:
              BorderRadius.circular(10)),
      child: Center(
        child: Text(
          courseName,
          style: const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
