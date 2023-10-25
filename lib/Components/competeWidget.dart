import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'hashTag.dart';

class CompeteWidget extends StatelessWidget {
  const CompeteWidget({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 5),
      child: Card(
        elevation: 1.5,
        borderOnForeground: true,
        shadowColor: Colors.black,
        margin: const EdgeInsets.only(bottom: 15),
        child: Padding(
          padding: const EdgeInsets.only(
              top: 5, bottom: 10),
          child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: ClipRRect(
                    borderRadius:
                        BorderRadius.circular(
                            10.0), //or 15.0
                    child: Container(
                      height: 60.0,
                      width: 60.0,
                      color:
                          const Color(0xFF4A8EF2),
                      child: const Icon(
                          Icons
                              .check_box_outline_blank,
                          color: Colors.white,
                          size: 40.0),
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
                  subtitle:
                      const Text('Engineering'),
                ),
                SingleChildScrollView(
                  scrollDirection:
                      Axis.horizontal,
                  child: Row(
                    children: [
                      const HashTag(),
                      const HashTag(),
                      const HashTag(),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.start,
                  children: [
                    TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.people,
                          color: Colors.black87,
                        ),
                        label: const Text(
                          "75 Registered",
                          style: TextStyle(
                              color:
                                  Colors.black87),
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          Icons
                              .access_time_outlined,
                          color: Colors.black87,
                        ),
                        label: const Text(
                          "24 days left",
                          style: TextStyle(
                              color:
                                  Colors.black87),
                        )),
                  ],
                )
              ]),
        ),
      ),
    );
  }
}
