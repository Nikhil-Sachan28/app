import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsearch/Components/topFilter.dart';
import 'package:jobsearch/Controller/job_controller.dart';
import 'package:jobsearch/Screens/Jobs/resultPage.dart';
import 'package:jobsearch/Screens/Jobs/viewJobDetail.dart';

class Findjob extends StatefulWidget {
  String jobTitle;
  bool isTopBar;

  Findjob(
      {Key? key,
      required this.jobTitle,
      this.isTopBar = false})
      : super(key: key);

  @override
  State<Findjob> createState() => _FindjobState();
}

List<Widget> topViewList = [
  const JobsGridView(),
  ResultAdminCardPage(),
  ResultAdminCardPage(adminCard: true),
];

var indexvalue = 0;

class _FindjobState extends State<Findjob> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF266FDE),
        title: Text(widget.jobTitle),
        // actions: [topFilter()],
        leading: InkWell(
            onTap: () => Get.back(),
            child: const Icon(
                Icons.arrow_back_outlined)),
      ),
      body: Column(children: [
        TopFilter(),
        widget.isTopBar ?tabBar() :const SizedBox() ,
        Expanded(
            child: widget.isTopBar
                ? topViewList[indexvalue]
                : const JobsGridView())
      ]),
    );
  }

  Widget tabBar() {
    return Center(
        child: Container(
      width: Get.width * 0.9,
      height: Get.height * 0.05,
      padding: const EdgeInsets.symmetric(
          horizontal: 4, vertical: 3),
      decoration: BoxDecoration(
          border: Border.all(width: 1),
          borderRadius:
              BorderRadius.circular(10)),
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
                  child: Text("Jobs"),
                ),
              ),
              Tab(
                child: Align(
                  alignment: Alignment.center,
                  child: Text("Results"),
                ),
              ),
              Tab(
                child: Align(
                  alignment: Alignment.center,
                  child: Text("Admit Card"),
                ),
              ),
            ]),
      ),
    ));
  }
}

class JobsGridView extends StatelessWidget {
  const JobsGridView({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GetBuilder <JobController>(
        builder: (jobController){
          return SizedBox(
            width: Get.width * .96,
            height: Get.height * 1,
            child: GridView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 30,
              shrinkWrap: true,
              physics: RangeMaintainingScrollPhysics(),
              padding: EdgeInsets.only(bottom: 150),
              gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 0.75,
                  crossAxisCount: 2),
              itemBuilder: (context, index) =>
                  Container(
                    // height: Get.height * 0.6,
                    // width: Get.width * 0.45,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 8, vertical: 8),
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black,
                            spreadRadius: 1,
                            blurRadius: 3)
                      ],
                      color: Colors.white,
                      borderRadius:
                      BorderRadius.circular(20),
                    ),
                    child: Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.center,
                        mainAxisAlignment:
                        MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                                top: 1, bottom: 5),
                            height: 75,
                            width: 75,
                            decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.black,
                                      spreadRadius: 1,
                                      blurRadius: 3)
                                ],
                                color: Colors.white,
                                borderRadius:
                                BorderRadius.circular(
                                    100)),
                          ),
                          Text(
                            // jobController.allPrivateJobs[index].name,
                            "jobController.allPrivateJobs[index].name",
                            style: const TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.center,
                            maxLines: 2,
                          ),
                          Text(
                            "Total Post  $index",
                            style: const TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          const Text(
                            "Last Date  21 July 2023",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.right,
                          ),
                          InkWell(
                            onTap: () {
                              Get.to(
                                      ()=> JobDetail());
                            },
                            child: Container(
                              height: 35,
                              width: 90,
                              decoration: BoxDecoration(
                                  color: const Color(
                                      0xFF3D5CFF),
                                  borderRadius:
                                  BorderRadius
                                      .circular(20)),
                              child: const Center(
                                child: Text(
                                  "View Job",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight:
                                      FontWeight
                                          .w500),
                                ),
                              ),
                            ),
                          )
                        ]),
                  ),
            ),
          );
        },
      )
    );
  }
}
