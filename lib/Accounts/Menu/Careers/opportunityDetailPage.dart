import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsearch/Accounts/Menu/Careers/applyOpportunity.dart';
import 'package:jobsearch/Configs/Constants.dart';

import '../../../Components/hashTag.dart';

class OpportunityDetailPage
    extends StatelessWidget {
  const OpportunityDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context)
            .scaffoldBackgroundColor,
        elevation: 0,
        centerTitle: false,
        title: const Text(
          "Oppurtitunity",
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
              decoration: const BoxDecoration(
                  color: Color(0xFFF2F7FF),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    topLeft: Radius.circular(15),
                  )),
              height: Get.height * 1,
              child: Column(
                mainAxisAlignment:
                    MainAxisAlignment.start,
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  Container(
                    height: Get.height * 0.2,
                    width: Get.width * 1,
                    color:
                        const Color(0xFF8994FF),
                    child: const Center(
                      child: Text(
                        "Cheif Technology Officer",
                        style: TextStyle(
                          fontFamily:
                              "Avenir Next",
                          fontSize: 22,
                          fontWeight:
                              FontWeight.w600,
                          color:
                              Color(0xFF000000),
                        ),
                        textAlign:
                            TextAlign.center,
                      ),
                    ),
                  ),
                  Card(
                    elevation: 0,
                    child: Column(children: [
                      const SizedBox(
                        height: 10,
                      ),
                      ListTile(
                          leading: ClipRRect(
                            borderRadius:
                                BorderRadius
                                    .circular(
                                        7.0),
                            //or 15.0
                            child: Container(
                              height: 120.0,
                              width: 80.0,
                              color: const Color(
                                  0xFFBEF4F4),
                              child:
                                  const Padding(
                                padding:
                                    EdgeInsets
                                        .all(8.0),
                                child: Image(
                                    image: AssetImage(
                                        "assets/play.png")),
                              ),
                            ),
                          ),
                          title: const Text(
                            "Chief Technology Officer",
                            style: TextStyle(
                              fontFamily:
                                  "Quicksand",
                              fontSize: 17,
                              fontWeight:
                                  FontWeight.w600,
                              color: Color(
                                  0xff2d2d2d),
                            ),
                            textAlign:
                                TextAlign.left,
                          ),
                          subtitle:
                              const ListTile(
                            horizontalTitleGap: 0,
                            contentPadding:
                                EdgeInsets.zero,
                            leading: Icon(Icons
                                .corporate_fare),
                            title: Text(
                              Constants
                                  .CompanyName,
                              style: TextStyle(
                                fontFamily:
                                    "Quicksand",
                                fontSize: 14,
                                fontWeight:
                                    FontWeight
                                        .w500,
                                color: Color(
                                    0xff2d2d2d),
                              ),
                            ),
                          )),
                      Padding(
                        padding: const EdgeInsets
                                .symmetric(
                            vertical: 7.0),
                        child: IntrinsicHeight(
                          child: Row(
                            mainAxisAlignment:
                                MainAxisAlignment
                                    .start,
                            children: const [
                              SizedBox(
                                width: 15,
                              ),
                              Icon(Icons
                                  .location_on_rounded),
                              Padding(
                                padding: EdgeInsets
                                    .only(
                                        left: 8.0,
                                        right:
                                            8.0),
                                child: Text(
                                    "Online"),
                              ),
                              VerticalDivider(
                                color: Colors
                                    .black54,
                                thickness: 2,
                              ),
                              Icon(
                                  Icons.language),
                            ],
                          ),
                        ),
                      ),
                      Row(children: const [
                        HashTag(),
                        HashTag(),
                      ]),
                    ]),
                  ),
                  registernumber(),
                  eligibility(),
                  details(),
                  const Expanded(
                      child: SizedBox()),
                ],
              )),
        ),
      ),
      bottomNavigationBar: UnconstrainedBox(
          child: Container(
        width: Get.width * 1,
        margin: const EdgeInsets.only(
          bottom: 10,
        ),
        padding: const EdgeInsets.only(
            left: 10, right: 20, bottom: 20),
        child: Row(
          mainAxisAlignment:
              MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(),
            ClipRRect(
              borderRadius:
                  BorderRadius.circular(10.0),
              //or 15.0
              child: Container(
                height: 35.0,
                width: 35.0,
                color: const Color(0xFF4A8EF2),
                child: const Icon(
                    Icons
                        .favorite_border_outlined,
                    color: Colors.white,
                    size: 20.0),
              ),
            ),

            TextButton(
                style: ButtonStyle(
                    shape:
                        MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius
                                        .circular(
                                            10))),
                    padding:
                        const MaterialStatePropertyAll(
                            EdgeInsets.symmetric(
                                horizontal: 40,
                                vertical: 10)),
                    backgroundColor:
                        const MaterialStatePropertyAll(
                            Color(0xFF0073E6))),
                onPressed: () {
                  Get.to(OpportunityApply());
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30.0,
                  ),
                  child: Text(
                    "Apply",
                    style: TextStyle(
                      fontFamily: "Quicksand",
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFFFFFFFF),
                    ),
                    textAlign: TextAlign.center,
                  ),
                )),
            const SizedBox(),
            // const SizedBox(),
          ],
        ),
      )),
    );
  }

  Widget registernumber() {
    return Card(
      elevation: 0,
      child: Container(
        margin: const EdgeInsets.only(
            top: 5, bottom: 5),
        child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center,
            crossAxisAlignment:
                CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(
                      child: ListTile(
                    leading: ClipRRect(
                      borderRadius:
                          BorderRadius.circular(
                              10.0), //or 15.0
                      child: Container(
                        height: 40.0,
                        width: 40.0,
                        color: const Color(
                            0xFF4A8EF2),
                        child: const Icon(
                            Icons.group,
                            color: Colors.white,
                            size: 20.0),
                      ),
                    ),
                    title: const Text(
                      "Registered",
                      style: TextStyle(
                        fontFamily: "Quicksand",
                        fontSize: 14,
                        fontWeight:
                            FontWeight.w700,
                        color: Color(0xff29367c),
                      ),
                      textAlign: TextAlign.left,
                    ),
                    subtitle: const Text(
                      "5",
                      style: TextStyle(
                        fontFamily: "Quicksand",
                        fontSize: 14,
                        fontWeight:
                            FontWeight.w500,
                        color: Color(0xff2d2d2d),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  )),
                  Expanded(
                      child: ListTile(
                    leading: ClipRRect(
                      borderRadius:
                          BorderRadius.circular(
                              10.0), //or 15.0
                      child: Container(
                        height: 40.0,
                        width: 40.0,
                        color: const Color(
                            0xFF4A8EF2),
                        child: const Icon(
                            Icons
                                .access_time_outlined,
                            color: Colors.white,
                            size: 20.0),
                      ),
                    ),
                    title: const Text(
                      "23 days left",
                      style: TextStyle(
                        fontFamily: "Quicksand",
                        fontSize: 14,
                        fontWeight:
                            FontWeight.w700,
                        color: Color(0xff29367c),
                      ),
                      textAlign: TextAlign.left,
                    ),
                    subtitle: const Text(
                      "China",
                      style: TextStyle(
                        fontFamily: "Quicksand",
                        fontSize: 14,
                        fontWeight:
                            FontWeight.w500,
                        color: Color(0xff2d2d2d),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  )),
                ],
              ),
              Row(
                children: [
                  Expanded(
                      child: ListTile(
                    leading: ClipRRect(
                      borderRadius:
                          BorderRadius.circular(
                              10.0), //or 15.0
                      child: Container(
                        height: 40.0,
                        width: 40.0,
                        color: const Color(
                            0xFF4A8EF2),
                        child: const Icon(
                            Icons.remove_red_eye,
                            color: Colors.white,
                            size: 20.0),
                      ),
                    ),
                    title: const Text(
                      "Impressions",
                      style: TextStyle(
                        fontFamily: "Quicksand",
                        fontSize: 14,
                        fontWeight:
                            FontWeight.w700,
                        color: Color(0xff29367c),
                      ),
                      textAlign: TextAlign.left,
                    ),
                    subtitle: const Text(
                      "1,173",
                      style: TextStyle(
                        fontFamily: "Quicksand",
                        fontSize: 14,
                        fontWeight:
                            FontWeight.w500,
                        color: Color(0xff2d2d2d),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  )),
                  Expanded(
                      child: ListTile(
                    leading: ClipRRect(
                      borderRadius:
                          BorderRadius.circular(
                              10.0), //or 15.0
                      child: Container(
                        height: 40.0,
                        width: 40.0,
                        color: const Color(
                            0xFF4A8EF2),
                        child: const Icon(
                            Icons.group,
                            color: Colors.white,
                            size: 20.0),
                      ),
                    ),
                    title: const Text(
                      "Individual",
                      style: TextStyle(
                        fontFamily: "Quicksand",
                        fontSize: 14,
                        fontWeight:
                            FontWeight.w700,
                        color: Color(0xff29367c),
                      ),
                      textAlign: TextAlign.left,
                    ),
                    subtitle: const Text(
                      "Participation",
                      style: TextStyle(
                        fontFamily: "Quicksand",
                        fontSize: 14,
                        fontWeight:
                            FontWeight.w500,
                        color: Color(0xff2d2d2d),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  )),
                ],
              ),
            ]),
      ),
    );
  }

  Widget eligibility() {
    return Card(
      elevation: 0,
      child: Container(
        padding: const EdgeInsets.only(
            left: 15, top: 10, bottom: 10),
        width: Get.width * 1,
        margin: const EdgeInsets.only(
            top: 5, bottom: 5),
        child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center,
            crossAxisAlignment:
                CrossAxisAlignment.start,
            children: const [
              Text(
                "Eligibility",
                style: TextStyle(
                  fontFamily: "Quicksand",
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff29367c),
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Experienced Professionals\nAny Deserving Canditdate",
                style: TextStyle(
                  fontFamily: "Quicksand",
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff2d2d2d),
                ),
                textAlign: TextAlign.left,
              )
            ]),
      ),
    );
  }

  Widget details() {
    return Card(
      elevation: 0,
      child: Container(
        padding: const EdgeInsets.only(
            left: 15,
            top: 10,
            bottom: 10,
            right: 15),
        width: Get.width * 1,
        margin: const EdgeInsets.only(
            top: 5, bottom: 5),
        child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center,
            crossAxisAlignment:
                CrossAxisAlignment.start,
            children: const [
              Text(
                "Details",
                style: TextStyle(
                  fontFamily: "Quicksand",
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff29367c),
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "he CTO is a senior executive responsible for the overall technology strategy and direction of an organization.3 They oversee and supervise research and development and serve as a technical advisor to a higher executive such as a CEO.1 The CTO is responsible for the organization's technical resources, including research and development, engineering, and IT. The CTO is similar to a Chief Information Officer (CIO).",
                style: TextStyle(
                  fontFamily: "Quicksand",
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff2d2d2d),
                ),
                textAlign: TextAlign.left,
              )
            ]),
      ),
    );
  }
}
