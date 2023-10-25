// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TopFilter extends StatelessWidget {
  bool isStatus;
  bool isCategory;
  String categoryName;

  TopFilter(
      {Key? key,
      this.isStatus = true,
      this.isCategory = false,
      this.categoryName = "Text"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      width: Get.width * 1,
      height: Get.height * 0.04,
      child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Center(
            child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.center,
                children: [
                  isCategory
                      ? Container(
                          margin: const EdgeInsets
                              .only(right: 10),
                          height:
                              Get.height * 0.05,
                          width: Get.width * 0.33,
                          decoration: BoxDecoration(
                              color: const Color(
                                  0xFF0073E5),
                              border: Border.all(
                                  width: 2,
                                  color: const Color(
                                      0xFF384BD7)),
                              borderRadius:
                                  BorderRadius
                                      .circular(
                                          25)),
                          child: Center(
                            child: Text(
                              categoryName,
                              // textAlign: TextAlign
                              //     .center,
                              style: const TextStyle(
                                  fontWeight:
                                      FontWeight
                                          .w600,
                                  color: Colors
                                      .white),
                            ),
                          ),
                        )
                      : const SizedBox(),
                  Container(
                    margin: const EdgeInsets.only(
                      right: 10,
                    ),
                    padding:
                        const EdgeInsets.only(
                            left: 7, right: 5),
                    height: Get.height * 0.05,
                    width: Get.width * 0.35,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 2,
                            color: const Color(
                                0xFF384BD7)),
                        borderRadius:
                            BorderRadius.circular(
                                25)),
                    child: Row(
                        mainAxisAlignment:
                            MainAxisAlignment
                                .spaceEvenly,
                        children: [
                          const Icon(
                            Icons
                                .filter_list_outlined,
                            size: 17,
                          ),
                          const Text(
                              "All Filters"),
                          Container(
                            width: 15,
                            height: 15,
                            decoration: BoxDecoration(
                                color: const Color(
                                    0xFF0073E6),
                                borderRadius:
                                    BorderRadius
                                        .circular(
                                            100)),
                            child: const Center(
                              child: Text(
                                "1",
                                style: TextStyle(
                                    color: Colors
                                        .white,
                                    fontSize: 10,
                                    fontWeight:
                                        FontWeight
                                            .bold),
                              ),
                            ),
                          ),
                        ]),
                  ),
                  isStatus
                      ? Container(
                          margin: const EdgeInsets
                              .only(right: 10),
                          padding:
                              const EdgeInsets
                                      .only(
                                  left: 10,
                                  right: 4),
                          height:
                              Get.height * 0.05,
                          width: Get.width * 0.33,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2,
                                  color: const Color(
                                      0xFF384BD7)),
                              borderRadius:
                                  BorderRadius
                                      .circular(
                                          25)),
                          child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment
                                      .spaceEvenly,
                              children: [
                                const Text(
                                    "Status"),
                                Container(
                                  width: 15,
                                  height: 15,
                                  decoration: BoxDecoration(
                                      color: const Color(
                                          0xFF0073E6),
                                      borderRadius:
                                          BorderRadius.circular(
                                              100)),
                                  child:
                                      const Center(
                                    child: Text(
                                      "1",
                                      style: TextStyle(
                                          color: Colors
                                              .white,
                                          fontSize:
                                              10,
                                          fontWeight:
                                              FontWeight.bold),
                                    ),
                                  ),
                                ),
                                const Icon(
                                  Icons
                                      .keyboard_arrow_down_outlined,
                                  size: 17,
                                ),
                              ]),
                        )
                      : const SizedBox(),
                  Container(
                    padding:
                        const EdgeInsets.only(
                            left: 10, right: 4),
                    height: Get.height * 0.05,
                    width: Get.width * 0.25,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 2,
                            color: const Color(
                                0xFF384BD7)),
                        borderRadius:
                            BorderRadius.circular(
                                25)),
                    child: Row(
                        mainAxisAlignment:
                            MainAxisAlignment
                                .spaceEvenly,
                        children: const [
                          Text("Type"),
                          // Container(
                          //   width: 15,
                          //   height: 15,
                          //   decoration: BoxDecoration(
                          //       color: Color(
                          //           0xFF0073E6),
                          //       borderRadius:
                          //           BorderRadius
                          //               .circular(
                          //                   100)),
                          //   child: Center(
                          //     child: Text(
                          //       "1",
                          //       style: TextStyle(
                          //           color: Colors
                          //               .white,
                          //           fontSize: 10,
                          //           fontWeight:
                          //               FontWeight
                          //                   .bold),
                          //     ),
                          //   ),
                          // ),
                          Icon(
                            Icons
                                .keyboard_arrow_down_outlined,
                            size: 20,
                          ),
                        ]),
                  ),
                ]),
          )),
    );
  }
}
