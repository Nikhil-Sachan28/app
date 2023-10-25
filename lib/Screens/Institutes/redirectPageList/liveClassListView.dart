import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsearch/Screens/Course/liveClassPage.dart';


class LiveClassListView extends StatelessWidget {
  const LiveClassListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: const Color(0xffffffff),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () => Get.back(),
        ),
        centerTitle: true,
        title: const Text(
          "Live Classes",
          style: TextStyle(
            fontFamily: "Quicksand",
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Color(0xff2d2d2d),
          ),
          textAlign: TextAlign.left,
        ),
      ),
      body: Column(
        crossAxisAlignment:
            CrossAxisAlignment.center,
        children: [
          const Divider(
            height: 10,
            thickness: 2,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 10.0, right: 10),
              child: GridView.builder(
                  physics: const ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 10,
                  scrollDirection: Axis.vertical,
                  gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 10,
                          childAspectRatio:
                              0.85 // childAspectRatio: 1,
                          ),
                  itemBuilder:
                      (context, index) => Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors
                                          .blue,
                                      borderRadius:
                                          BorderRadius.circular(
                                              7)),
                                  height:
                                      Get.height *
                                          0.25,
                                  width:
                                      Get.width *
                                          0.40,
                                  child: Column(
                                      children: [
                                        Container(
                                          color: Colors
                                              .black26,
                                          height: Get.height *
                                              0.135,
                                        ),
                                        Container(
                                          color: Colors
                                              .white,
                                          height: Get.height *
                                              0.06,
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                SizedBox(
                                                  width: Get.width * 0.38,
                                                  child: const Text(
                                                    "Live Class titleLive Class titleLive Class title",
                                                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                                                    overflow: TextOverflow.ellipsis,
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                              ]),
                                        ),
                                        SizedBox(
                                          height: Get.height *
                                              0.055,
                                          child:
                                              Center(
                                            child:
                                                Container(
                                              margin:
                                                  const EdgeInsets.symmetric(horizontal: 10),
                                              decoration:
                                                  BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                                              height:
                                                  Get.height * 0.031,
                                              width:
                                                  Get.width * 0.25,
                                              child:
                                                  Center(
                                                child: InkWell(
                                                  onTap: () => Get.to(const LiveClassPage()),
                                                  child: const Text(
                                                    "Join Now",
                                                    style: TextStyle(color: Colors.black),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ]),
                                )
                              ])),
            ),
          ),
        ],
      ),
    );
  }
}
