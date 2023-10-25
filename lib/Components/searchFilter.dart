import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'rangePicker.dart';

class SearchFilter extends StatefulWidget {
  const SearchFilter({Key? key})
      : super(key: key);

  @override
  State<SearchFilter> createState() =>
      _SearchFilterState();
}

class _SearchFilterState
    extends State<SearchFilter> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            mainAxisAlignment:
                MainAxisAlignment.end,
            children: [
              Container(
                alignment: Alignment.bottomCenter,
                height: Get.height * 1,
                width: Get.width * 1,
                decoration: const BoxDecoration(
                    borderRadius:
                        BorderRadius.only(
                            topRight:
                                Radius.circular(
                                    20),
                            topLeft:
                                Radius.circular(
                                    20))),
                child: Container(
                    margin: const EdgeInsets.only(
                        top: 15, left: 10),
                    child: Column(
                      mainAxisAlignment:
                          MainAxisAlignment
                              .spaceBetween,
                      children: [
                        Column(children: [
                          SizedBox(
                            height: 60,
                            width: Get.width * 1,
                            child:
                                Stack(children: [
                              Align(
                                alignment: Alignment
                                    .centerLeft,
                                child: InkWell(
                                  onTap: () =>
                                      Get.back(),
                                  child:
                                      const Icon(
                                    Icons
                                        .cancel_outlined,
                                    color: Colors
                                        .black,
                                  ),
                                ),
                              ),
                              Align(
                                alignment:
                                    Alignment
                                        .center,
                                child: Container(
                                  margin:
                                      const EdgeInsets
                                              .only(
                                          right:
                                              20),
                                  child:
                                      const Text(
                                    'Search Filter',
                                    style:
                                        TextStyle(
                                      color: Color(
                                          0xFF1F1F39),
                                      fontSize:
                                          18,
                                      fontFamily:
                                          'Poppins',
                                      fontWeight:
                                          FontWeight
                                              .w500,
                                    ),
                                  ),
                                ),
                              )
                            ]),
                          ),
                          //Category
                          Container(
                            height:
                                Get.height * 0.09,
                            width: Get.height * 1,
                            color: Colors.white,
                            margin:
                                const EdgeInsets
                                        .only(
                                    left: 20),
                            alignment: Alignment
                                .centerLeft,
                            child: const Text(
                              'Categories',
                              style: TextStyle(
                                color: Color(
                                    0xFF1F1F39),
                                fontSize: 16,
                                fontFamily:
                                    'Poppins',
                                fontWeight:
                                    FontWeight
                                        .w500,
                              ),
                            ),
                          ),
                          Container(
                            height:
                                Get.height * 0.12,
                            margin:
                                const EdgeInsets
                                        .only(
                                    top: 10,
                                    left: 10,
                                    right: 20,
                                    bottom: 10),
                            child: Row(
                              children: [
                                button(
                                    'Design',
                                    0xFFFFFFFF,
                                    0xFF3D5CFF),
                                button(
                                    'Music',
                                    0xFF9A9AAB,
                                    0xFFF4F3FD),
                                button(
                                    'Paintin',
                                    0xFF9A9AAB,
                                    0xFFF4F3FD),
                              ],
                            ),
                          ),
                          //Price
                          SizedBox(
                              height: Get.height *
                                  0.08,
                              width:
                                  Get.width * 1,
                              child: const Align(
                                alignment: Alignment
                                    .centerLeft,
                                child: Text(
                                  'Price',
                                  style:
                                      TextStyle(
                                    color: Color(
                                        0xFF1F1F39),
                                    fontSize: 16,
                                    fontFamily:
                                        'Poppins',
                                    fontWeight:
                                        FontWeight
                                            .w500,
                                  ),
                                ),
                              )),
                          const RangePicker(),
                          //Duration
                          SizedBox(
                              height: Get.height *
                                  0.09,
                              width:
                                  Get.width * 1,
                              child: const Align(
                                alignment: Alignment
                                    .centerLeft,
                                child: Text(
                                  'Duration',
                                  style:
                                      TextStyle(
                                    color: Color(
                                        0xFF1F1F39),
                                    fontSize: 16,
                                    fontFamily:
                                        'Poppins',
                                    fontWeight:
                                        FontWeight
                                            .w500,
                                  ),
                                ),
                              )),
                          Container(
                            height:
                                Get.height * 0.15,
                            margin:
                                const EdgeInsets
                                        .only(
                                    top: 10,
                                    left: 10,
                                    right: 20,
                                    bottom: 10),
                            child: Row(
                              children: [
                                button(
                                    '3-8 Hours',
                                    0xFF9A9AAB,
                                    0xFFF4F3FD),
                                button(
                                    '8-14 Hours',
                                    0xFFFFFFFF,
                                    0xFF3D5CFF),
                                button(
                                    '14-20 Hours',
                                    0xFF9A9AAB,
                                    0xFFF4F3FD),
                              ],
                            ),
                          ),
                        ]),
                        Align(
                          alignment: Alignment
                              .bottomCenter,
                          child: Container(
                            color: Colors.white,
                            height:
                                Get.height * 0.10,
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment
                                      .spaceBetween,
                              children: [
                                Container(
                                  decoration:
                                      BoxDecoration(
                                    border: Border.all(
                                        color: Colors
                                            .blue,
                                        width:
                                            1.5),
                                    borderRadius: const BorderRadius
                                            .all(
                                        Radius.circular(
                                            15)),
                                  ),
                                  height:
                                      Get.height *
                                          0.08,
                                  width:
                                      Get.width *
                                          0.3,
                                  child:
                                      const Center(
                                    child: Text(
                                      'Clear',
                                      style:
                                          TextStyle(
                                        color: Color(
                                            0xFF3D5CFF),
                                        fontSize:
                                            16,
                                        fontFamily:
                                            'Poppins',
                                        fontWeight:
                                            FontWeight
                                                .w500,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets
                                              .only(
                                          right:
                                              5),
                                  decoration:
                                      const BoxDecoration(
                                    color: Color(
                                        0xFF3D5CFF),
                                    borderRadius:
                                        BorderRadius.all(
                                            Radius.circular(
                                                15)),
                                  ),
                                  height:
                                      Get.height *
                                          0.08,
                                  width:
                                      Get.width *
                                          0.63,
                                  child:
                                      const Center(
                                    child: Text(
                                      'Apply',
                                      style:
                                          TextStyle(
                                        color: Color(
                                            0xFFFFFFFF),
                                        fontSize:
                                            16,
                                        fontFamily:
                                            'Poppins',
                                        fontWeight:
                                            FontWeight
                                                .w500,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    )),
              ),
            ],
          )),
    );
  }

  button(String textcat, int textcolor,
      int containercolor) {
    return Container(
      margin: const EdgeInsets.only(right: 15),
      height: Get.height * 0.06,
      width: Get.width * 0.23,
      decoration: BoxDecoration(
          color: Color(containercolor),
          borderRadius: const BorderRadius.all(
              Radius.circular(10))),
      child: Center(
        child: Text(
          textcat,
          style: TextStyle(
            color: Color(textcolor),
            fontSize: 12,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
