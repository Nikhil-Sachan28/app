// ignore_for_file: prefer_const_constructors

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsearch/Accounts/Menu/CaseStudies/caseStudiesDetails.dart';
import 'package:jobsearch/Accounts/Menu/requestDemo.dart';
import '../../../Configs/Constants.dart';

class CaseStudies extends StatelessWidget {
  const CaseStudies({Key? key}) : super(key: key);

  topSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 10, vertical: 10),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 5,
          ),
          const Text(
            Constants.CompanyName,
            style: TextStyle(
              fontFamily: "Avenir Next",
              fontSize: 25,
              fontWeight: FontWeight.w500,
              color: Color(0xff35393c),
            ),
            textAlign: TextAlign.start,
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "Case Studies",
            style: TextStyle(
              letterSpacing: 1,
              decorationColor: Color(0xFF202DBE),
              fontFamily: "Avenir Next",
              fontSize: 25,
              fontWeight: FontWeight.w700,
              color: Color(0xff35393c),
            ),
            textAlign: TextAlign.start,
          ),
          const SizedBox(
            width: 100,
            child: Divider(
              height: 25,
              thickness: 2,
              color: Color(0xFF000000),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "Explore case studies on top companies",
            style: TextStyle(
              fontFamily: "Montserrat",
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color(0xff000000),
            ),
            textAlign: TextAlign.left,
          ),
          const SizedBox(
            height: 15,
          ),
          TextButton(
              style: ButtonStyle(
                  shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius
                                  .circular(10))),
                  backgroundColor:
                      const MaterialStatePropertyAll(
                          Color(0xFF000000))),
              onPressed: () {
                Get.to(RequestDemo());
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 2),
                child: Text(
                  "Contact Us",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffffffff),
                  ),
                  textAlign: TextAlign.left,
                ),
              )),
        ],
      ),
    );
  }

  caseStudiesListViewSection() {
    return Column(
      children: [
        const SizedBox(
          height: 15,
        ),
        const Text(
          "Case Studies",
          style: TextStyle(
            letterSpacing: 1,
            decorationColor: Color(0xFF202DBE),
            fontFamily: "Avenir Next",
            fontSize: 27,
            fontWeight: FontWeight.w500,
            color: Color(0xff35393c),
          ),
          textAlign: TextAlign.start,
        ),
        Container(
          margin: const EdgeInsets.symmetric(
              horizontal: 10, vertical: 10),
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: 6,
            physics:
                const RangeMaintainingScrollPhysics(),
            itemBuilder: (context, index) =>
                Container(
              margin: const EdgeInsets.only(
                  bottom: 15),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black38,
                      width: 1),
                  borderRadius:
                      BorderRadius.circular(10)),
              child: IntrinsicHeight(
                  child: Column(
                children: [
                  Container(
                    height: Get.height * 0.28,
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(
                                15)),
                    child: ClipRRect(
                      borderRadius:
                          const BorderRadius.only(
                        topRight:
                            Radius.circular(10),
                        topLeft:
                            Radius.circular(10),
                      ),
                      child: CachedNetworkImage(
                        placeholder:
                            (context, item) =>
                                const Icon(
                                    Icons.image),
                        imageUrl:
                            'https://images.pexels.com/photos/1742370/pexels-photo-1742370.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 20,
                      right: 30,
                      bottom: 15,
                    ),
                    child: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment
                              .start,
                      children: [
                        ListTile(
                          dense: true,
                          horizontalTitleGap: 0,
                          contentPadding:
                              EdgeInsets.zero,
                          title: Text(
                            "Job Finder Admin",
                            style: TextStyle(
                              fontFamily:
                                  "Nunito",
                              fontSize: 13,
                              fontWeight:
                                  FontWeight.w400,
                              color: Color(
                                  0xFF101010),
                            ),
                            textAlign:
                                TextAlign.left,
                          ),
                          leading: CircleAvatar(
                              radius: 13,
                              child: Center(
                                child: Icon(
                                  Icons.abc,
                                ),
                              )),
                        ),
                        Text(
                          "Personal information you disclose to us Short: We collect personal information that you provide to us. We collect personal information that you voluntarily provide to us when you register on the express an interest in obtaining information about us or our products and Services, when you participate in activities on the (such as by posting messages in our ",
                          style: TextStyle(
                            fontFamily:
                                "Quicksand",
                            fontSize: 18,
                            fontWeight:
                                FontWeight.w500,
                            color:
                                Color(0xff2d2d2d),
                          ),
                          textAlign:
                              TextAlign.start,
                          overflow: TextOverflow
                              .ellipsis,
                          maxLines: 3,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () => Get.to(CaseStudiesDetails()),
                          child: IntrinsicWidth(
                            child: Row(
                              children: const [
                                Text(
                                  "Read more",
                                  style: TextStyle(
                                    fontFamily:
                                        "Poppins",
                                    fontSize: 16,
                                    fontWeight:
                                        FontWeight
                                            .w500,
                                    color: Color(
                                        0xFF000000),
                                  ),
                                  textAlign:
                                      TextAlign
                                          .left,
                                ),
                                Icon(
                                  Icons
                                      .arrow_forward_ios_rounded,
                                  size: 15,
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )),
            ),
          ),
        ),
      ],
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
          "Client Case Studies",
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
        child: SizedBox(
          child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [
                topSection(),
                caseStudiesListViewSection()
              ]),
        ),
      ),
    );
  }
}
