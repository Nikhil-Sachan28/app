import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PartnersPage extends StatefulWidget {
  const PartnersPage({super.key});

  @override
  State<PartnersPage> createState() =>
      _PartnersPageState();
}

class _PartnersPageState
    extends State<PartnersPage> {
  _topSection() {
    return Container(
      // color: const Color(0xFFBAD1FF),
      width: Get.width * 1,
      color: const Color(0xFFE4E8F1),
      padding: const EdgeInsets.only(
          left: 10,
          right: 10,
          top: 25,
          bottom: 30),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.center,
        children: const [
          SizedBox(
            height: 15,
          ),
          Text(
            "Partners",
            style: TextStyle(
                fontFamily: "kinit",
                fontSize: 45,
                fontWeight: FontWeight.w700,
                color: Color(0xFF000000),
                letterSpacing: 1,
                height: 1.1),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 10.0),
            child: Text(
              "We identify the importace of maintaining key partnerships and close collaborations with all partners alike",
              style: TextStyle(
                fontFamily: "Inter",
                fontSize: 19,
                fontWeight: FontWeight.w400,
                color: Color(0xff000000),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  _partners() {
    return Container(
      // color: const Color(0xFFBAD1FF),
      width: Get.width * 1,
      // color: const Color(0xFFE4E8F1),
      padding: const EdgeInsets.only(
          left: 10,
          right: 10,
          top: 25,
          bottom: 30),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 15,
          ),
          const Text(
            "Business Schools",
            style: TextStyle(
                fontFamily: "kinit",
                fontSize: 35,
                fontWeight: FontWeight.w700,
                color: Color(0xFF000000),
                letterSpacing: 1,
                height: 1.1),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
              padding: const EdgeInsets.only(
                  right: 10.0),
              child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics:
                      const RangeMaintainingScrollPhysics(),
                  itemBuilder: (context, index) =>
                      Padding(
                        padding:
                            const EdgeInsets.only(
                                bottom: 20.0),
                        child: Row(
                          mainAxisAlignment:
                              MainAxisAlignment
                                  .start,
                          children: const [
                            CircleAvatar(
                                backgroundColor:
                                    Color(
                                        0xFF1D2226),
                                radius: 50,
                                child:
                                    CircleAvatar(
                                  backgroundColor:
                                      Color(
                                          0xFFFFFFFF),
                                  radius: 49,
                                  child: Padding(
                                    padding:
                                        EdgeInsets
                                            .all(
                                                8.0),
                                    child: Image(
                                        fit: BoxFit
                                            .fill,
                                        image: AssetImage(
                                            "assets/illustration-3.png")),
                                  ),
                                )),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Text(
                                "Indian Institute of Technology, New Delhi",
                                style: TextStyle(
                                  wordSpacing: 1,
                                  fontFamily:
                                      "Inter",
                                  fontSize: 19,
// overflow: TextOverflow.ellipsis,
                                  fontWeight:
                                      FontWeight
                                          .w400,
                                  color: Color(
                                      0xff000000),
                                ),
                                textAlign:
                                    TextAlign
                                        .start,
                              ),
                            ),
                          ],
                        ),
                      ))),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context)
            .scaffoldBackgroundColor,
        elevation: 1,
        centerTitle: false,
        title: const Text(
          "Our Partners",
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
      body: SingleChildScrollView(
        child: Column(children: [
          _topSection(),
          _partners()
        ]),
      ),
    );
  }
}
