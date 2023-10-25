import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsearch/Screens/Jobs/viewJobDetail.dart';

class ResultAdminCardPage
    extends StatelessWidget {
  bool adminCard;

  ResultAdminCardPage(
      {Key? key, this.adminCard = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: Get.width * .96,
        height: Get.height * 1,
        child: adminCard
            ? ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 30,
                itemBuilder: (context, index) =>
                    Container(
                  margin: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 10),
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black38,
                          spreadRadius: 1,
                          blurRadius: 1)
                    ],
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(15),
                  ),
                  child: ListTile(
                    onTap: () {},
                    leading: const Icon(Icons
                        .account_box_outlined),
                    title: Text(
                      "Admit Card Name $index",
                      style: const TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 15,
                        fontWeight:
                            FontWeight.w500,
                      ),
                      textAlign: TextAlign.left,
                      maxLines: 2,
                      overflow:
                          TextOverflow.ellipsis,
                    ),
                    trailing: TextButton(
                      onPressed: () {},
                      child: Container(
                        height: 30,
                        width: 90,
                        decoration: BoxDecoration(
                            color: const Color(
                                0xFF3D5CFF),
                            borderRadius:
                                BorderRadius
                                    .circular(
                                        10)),
                        child: const Center(
                          child: Text(
                            "Admit Card",
                            style: TextStyle(
                                fontSize: 12,
                                color:
                                    Colors.white,
                                fontWeight:
                                    FontWeight
                                        .w400),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            : ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 30,
                itemBuilder: (context, index) =>
                    Container(
                  margin: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 10),
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black38,
                          spreadRadius: 1,
                          blurRadius: 1)
                    ],
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(15),
                  ),
                  child: ListTile(
                    onTap: () {},
                    leading: const Icon(Icons
                        .account_box_outlined),
                    title: Text(
                      "Jobs Name $index",
                      style: const TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 17,
                        fontWeight:
                            FontWeight.w500,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    trailing: TextButton(
                      onPressed: () {},
                      child: Container(
                        height: 30,
                        width: 90,
                        decoration: BoxDecoration(
                            color: const Color(
                                0xFF3D5CFF),
                            borderRadius:
                                BorderRadius
                                    .circular(
                                        10)),
                        child: const Center(
                          child: Text(
                            "View Result",
                            style: TextStyle(
                                fontSize: 12,
                                color:
                                    Colors.white,
                                fontWeight:
                                    FontWeight
                                        .w400),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
      ),
    );
  }
}
