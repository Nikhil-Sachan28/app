import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsearch/Screens/Jobs/RelatedJobs.dart';
import 'package:jobsearch/Screens/Jobs/post.dart';

import 'aboutUs.dart';

class JobDetail extends StatefulWidget {
String AboutUsDetail;
 JobDetail({this.AboutUsDetail= "this is default about Company detail", Key? key}) : super(key: key);

  @override
  State<JobDetail> createState() =>
      _JobDetailState();
}

// List<Widget> topViewList = [
//  AboutUs(),
//   const Post(),
//   const RelatedJobs(),
// ];
var indexvalue = 0;

class _JobDetailState extends State<JobDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,

          child: Column(
            // mainAxisAlignment:
            //     MainAxisAlignment.spaceBetween,
            // crossAxisAlignment:
            //     CrossAxisAlignment.center,
            children: [
              topBar(),
              const SizedBox(
                height: 15,
              ),
              tabBar(),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: Get.height * 0.6,
                width: Get.width * 1,
                margin: const EdgeInsets.only(
                    left: 20, right: 15),
                child: SingleChildScrollView(
            child:(() {
             if(indexvalue == 0){
               return AboutUs(aboutUsDetail: widget.AboutUsDetail,);
             }else if(indexvalue == 1){return const Post();}
             else if(indexvalue == 2){
              return const RelatedJobs();
             } else {AboutUs(aboutUsDetail: widget.AboutUsDetail,);}
            }()),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: bottomSheet(),
      // floatingActionButton: bottomSheet(),
      // floatingActionButtonLocation:
      //     FloatingActionButtonLocation
      //         .miniEndDocked,
    );
  }

  Widget topBar() {
    return SafeArea(
      child: SizedBox(
        height: Get.height * .20,
        width: Get.width * 1,
        child: Stack(
          children: [
            Container(
              margin:
                  const EdgeInsets.only(left: 20),
              height: 30,
              width: Get.width * 0.05,
              child: Align(
                alignment: Alignment.topLeft,
                child: InkWell(
                  onTap: () => Get.back(),
                  child: const Icon(
                      Icons.arrow_back_outlined),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                height: Get.height * 0.20,
                width: Get.width * 0.45,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget tabBar() {
    return Center(
        child: Container(
      width: Get.width * 0.9,
      height: Get.height * 0.08,
      padding: const EdgeInsets.symmetric(
          horizontal: 4, vertical: 4),
      decoration: BoxDecoration(
          border: Border.all(width: 1),
          borderRadius:
              BorderRadius.circular(15)),
      child: DefaultTabController(
        length: 3,
        child: TabBar(
            onTap: (index) => setState(() {
                  indexvalue = index;
                }),
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            indicatorSize:
                TabBarIndicatorSize.tab,
            indicator: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(12),
                color: const Color(0xFF1DA1F2)),
            tabs: const [
              Tab(
                child: Align(
                  alignment: Alignment.center,
                  child: Text("About us"),
                ),
              ),
              Tab(
                child: Align(
                  alignment: Alignment.center,
                  child: Text("Post"),
                ),
              ),
              Tab(
                child: Align(
                  alignment: Alignment.center,
                  child: Text("Jobs"),
                ),
              ),
            ]),
      ),
    ));
  }

  Widget bottomSheet() {
    return IntrinsicHeight(

        child: Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
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
                  onPressed: () {},
                  child: const Text(
                    "Apply Now",
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
        ));
  }
}

