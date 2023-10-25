import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsearch/Components/hashTag.dart';
import 'package:jobsearch/Components/topFilter.dart';

import '../../Components/SearchBar.dart'
    as SearchBar;

import '../../Components/competeWidget.dart';

class CompeteListPage extends StatefulWidget {
  String categoryName;

  CompeteListPage(
      {Key? key,
      this.categoryName = "Competitions"})
      : super(key: key);

  @override
  State<CompeteListPage> createState() =>
      _CompeteListPageState();
}

class _CompeteListPageState
    extends State<CompeteListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SearchBar.SearchBar(
            hintText: "Compete, Hackathons"),
        backgroundColor: const Color(0xFF3D5CFF),
      ),
      body: Container(
        color: const Color(0xFFF4F5F7),
        child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.center,
            children: [
              Card(
                elevation: 0,
                child: TopFilter(
                  isStatus: false,
                  isCategory: true,
                  categoryName:
                      widget.categoryName,
                ),
              ),
              Expanded(
                child: ListView.builder(
                    scrollDirection:
                        Axis.vertical,
                    itemCount: 5,
                    itemBuilder: (context,
                            index) =>
                        InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                isScrollControlled:
                                    true,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius
                                            .circular(
                                                13)),
                                context: context,
                                builder: (context) => Container(
                                    decoration: const BoxDecoration(
                                        color: Color(0xFFF2F7FF),
                                        borderRadius: BorderRadius.only(
                                          topRight:
                                              Radius.circular(15),
                                          topLeft:
                                              Radius.circular(15),
                                        )),
                                    height: Get.height * 0.8,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment
                                              .start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment
                                              .start,
                                      children: [
                                        Card(
                                          elevation:
                                              0,
                                          child: Column(
                                              children: [
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                ListTile(
                                                  leading: ClipRRect(
                                                    borderRadius: BorderRadius.circular(20.0),
                                                    //or 15.0
                                                    child: Container(
                                                      height: 80.0,
                                                      width: 80.0,
                                                      color: const Color(0xFF4A8EF2),
                                                      child: const Icon(Icons.check_box_outline_blank, color: Colors.white, size: 40.0),
                                                    ),
                                                  ),
                                                  title: const Text(
                                                    "Innovation Challenge: Safety and Decision-Making in Autonous",
                                                    style: TextStyle(
                                                      fontFamily: "Quicksand",
                                                      fontSize: 15,
                                                      fontWeight: FontWeight.w600,
                                                      color: Color(0xff2d2d2d),
                                                    ),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                  subtitle: const Text('Engineering'),
                                                ),
                                                UnconstrainedBox(
                                                  child: IntrinsicHeight(
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: const [
                                                        SizedBox(
                                                          width: 15,
                                                        ),
                                                        Icon(Icons.location_on_rounded),
                                                        Padding(
                                                          padding: EdgeInsets.only(left: 8.0, right: 8.0),
                                                          child: Text("Online"),
                                                        ),
                                                        VerticalDivider(
                                                          color: Colors.black54,
                                                          thickness: 2,
                                                        ),
                                                        Icon(Icons.language),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SingleChildScrollView(
                                                  scrollDirection: Axis.horizontal,
                                                  child: Row(
                                                    children: const [
                                                      HashTag(),
                                                      HashTag(),
                                                      HashTag(),
                                                    ],
                                                  ),
                                                ),
                                              ]),
                                        ),
                                        registernumber(),
                                        eligibility(),
                                        const Expanded(
                                            child:
                                                SizedBox()),
                                        Align(
                                          alignment:
                                              Alignment.bottomCenter,
                                          child: UnconstrainedBox(
                                              child: Container(
                                            width:
                                                Get.width * 1,
                                            margin:
                                                const EdgeInsets.only(
                                              bottom:
                                                  10,
                                            ),
                                            padding: const EdgeInsets.only(
                                                left: 10,
                                                right: 20),
                                            child:
                                                Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceBetween,
                                              children: [
                                                const SizedBox(),
                                                ClipRRect(
                                                  borderRadius: BorderRadius.circular(10.0),
                                                  //or 15.0
                                                  child: Container(
                                                    height: 35.0,
                                                    width: 35.0,
                                                    color: const Color(0xFF4A8EF2),
                                                    child: const Icon(Icons.favorite_border_outlined, color: Colors.white, size: 20.0),
                                                  ),
                                                ),
                                                const Text(
                                                  "Free",
                                                  style: TextStyle(
                                                    fontFamily: "Quicksand",
                                                    fontSize: 23,
                                                    fontWeight: FontWeight.w700,
                                                    color: Color(0xFF203146),
                                                  ),
                                                  textAlign: TextAlign.center,
                                                ),
                                                TextButton(
                                                    style: ButtonStyle(shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))), padding: const MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 40, vertical: 10)), backgroundColor: const MaterialStatePropertyAll(Color(0xFF0073E6))),
                                                    onPressed: () {},
                                                    child: const Text(
                                                      "Register",
                                                      style: TextStyle(
                                                        fontFamily: "Quicksand",
                                                        fontSize: 15,
                                                        fontWeight: FontWeight.w700,
                                                        color: Color(0xFFFFFFFF),
                                                      ),
                                                      textAlign: TextAlign.center,
                                                    )),
                                                const SizedBox(),
                                              ],
                                            ),
                                          )),
                                        )
                                      ],
                                    )),
                              );
                            },
                            child:
                                const CompeteWidget())),
              )
            ]),
      ),
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
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff29367c),
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "All",
                style: TextStyle(
                  fontFamily: "Quicksand",
                  fontSize: 14,
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
