import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsearch/Controller/job_controller.dart';

import 'package:jobsearch/Screens/Jobs/findjob.dart';
import 'package:jobsearch/constants/jobs_type.dart';
import '../../Components/SearchBar.dart' as searchbar;
import '../../Components/categoryComponent.dart';

class JobsMainPage extends StatefulWidget {
  const JobsMainPage({Key? key})
      : super(key: key);

  @override
  State<JobsMainPage> createState() =>
      _JobsMainPageState();
}

@override
void onInit() {
 Get.put(JobController());
}
class _JobsMainPageState
    extends State<JobsMainPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // leading: InkWell(
        //   onTap: () => Get.back(),
        //   child: Icon(Icons.arrow_back),
        // ),
        title: searchbar.SearchBar(hintText: "Find Jobs"),
        backgroundColor: const Color(0xFF3D5CFF),
      ),
      body: GetBuilder<JobController>(
        builder: (jobController){
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15),
              child: Column(
                mainAxisAlignment:
                MainAxisAlignment.start,
                children: [
                  jobCategory(),
                  hiringCategory(),
                  jobsCategory(),
                  internshipsCategory(),
                  const SizedBox(
                    height: 25,
                  )
                ],
              ),
            ),
          );
        },
      )
    );
  }

  Widget hiringCategory() {
    var jobController = Get.put(JobController());
    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(
              top: 20, bottom: 5, left: 10),
          child: const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Hiring Challanges",
              style: TextStyle(
                fontFamily: "Quicksand",
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Color(0xff29367c),
                // height: 21 / 14,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
              bottom: 20, left: 10),
          child: const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Get Placement offers frm your favorite companies",
              style: TextStyle(
                fontFamily: "Quicksand",
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Color(0xFF42536F),
                // height: 21 / 14,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ),
        Row(
          mainAxisAlignment:
              MainAxisAlignment.center,
          children: [
            CategoryComponent(
              containerHeight: 0.17,
              alignment: Alignment.topLeft,
              isPadding: true,
              fontsize: 13,
              containerWidth: 0.43,
              categoryText: "Art & Science",
              redirectPage: () {
                Get.to(Findjob(
                    jobTitle:
                        "hiring Challanges",
                    jobType: JobType.hiringChallenge),


                );
              },
            ),
            const SizedBox(
              width: 15,
            ),
            CategoryComponent(
              containerHeight: 0.17,
              alignment: Alignment.topLeft,
              isPadding: true,
              fontsize: 13,
              containerWidth: 0.43,
              categoryText: "Business",
              // isPadding: true,
              redirectPage: () {
                Findjob(
                    jobTitle:
                        "hiring Challanges",
                    jobType: JobType.hiringChallenge);
              },
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment:
              MainAxisAlignment.center,
          children: [
            CategoryComponent(
              containerHeight: 0.17,
              containerWidth: 0.43,
              alignment: Alignment.topLeft,
              isPadding: true,
              fontsize: 13,
              categoryText: "Engineering",
              redirectPage: () {
                Findjob(
                    jobTitle:
                        "hiring Challanges",
                    jobType: JobType.hiringChallenge);
              },
            ),
            const SizedBox(
              width: 15,
            ),
            CategoryComponent(
              containerHeight: 0.17,
              containerWidth: 0.43,
              alignment: Alignment.center,
              isPadding: true,
              fontsize: 14,
              categoryText: "Explore All",
              redirectPage: () {
                Findjob(
                    jobTitle:
                        "hiring Challanges",
                  jobType: JobType.hiringChallenge,);
              },
            ),
          ],
        ),
      ],
    );
  }

  Widget jobsCategory() {
    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(
              top: 20, bottom: 5, left: 10),
          child: const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Jobs",
              style: TextStyle(
                fontFamily: "Quicksand",
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Color(0xff29367c),
                // height: 21 / 14,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
              bottom: 20, left: 10),
          child: const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Apply for full-time & part-time in-office, work-from-home & hybrid jobs!",
              style: TextStyle(
                fontFamily: "Quicksand",
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Color(0xFF42536F),
                // height: 21 / 14,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ),
        Row(
          mainAxisAlignment:
              MainAxisAlignment.center,
          children: [
            CategoryComponent(
              containerHeight: 0.17,
              alignment: Alignment.topLeft,
              isPadding: true,
              fontsize: 13,
              containerWidth: 0.43,
              categoryText: "Full-Time",
              redirectPage: () {
                Get.to(Findjob(
                    jobTitle: "Jobs",
                  jobType: JobType.privateJobs,
                ));
              },
            ),
            const SizedBox(
              width: 15,
            ),
            CategoryComponent(
              containerHeight: 0.17,
              alignment: Alignment.topLeft,
              isPadding: true,
              fontsize: 13,
              containerWidth: 0.43,
              categoryText: "In_office",
              // isPadding: true,
              redirectPage: () {
                Get.to(Findjob(
                    jobTitle: "Jobs",
                  jobType: JobType.privateJobs,
                ));
              },
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment:
              MainAxisAlignment.center,
          children: [
            CategoryComponent(
              containerHeight: 0.17,
              containerWidth: 0.43,
              alignment: Alignment.topLeft,
              isPadding: true,
              fontsize: 13,
              categoryText: "Virtual",
              redirectPage: () {
                Get.to(Findjob(
                  jobTitle: "Jobs",
                  jobType: JobType.privateJobs,
                ));
              },
            ),
            const SizedBox(
              width: 15,
            ),
            CategoryComponent(
              containerHeight: 0.17,
              containerWidth: 0.43,
              alignment: Alignment.topLeft,
              isPadding: true,
              fontsize: 14,
              categoryText: "Part-Time",
              redirectPage: () {
                Get.to(Findjob(
                    jobTitle: "Jobs",

                  jobType: JobType.privateJobs,
                ));
              },
            ),
          ],
        ),
      ],
    );
  }

  Widget internshipsCategory() {
    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(
              top: 20, bottom: 5, left: 10),
          child: const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Internships",
              style: TextStyle(
                fontFamily: "Quicksand",
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Color(0xff29367c),
                // height: 21 / 14,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
              bottom: 20, left: 10),
          child: const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Apply for full-time & part-time internships offering certificates, PPOs & more",
              style: TextStyle(
                fontFamily: "Quicksand",
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Color(0xFF42536F),
                // height: 21 / 14,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ),
        Row(
          mainAxisAlignment:
              MainAxisAlignment.center,
          children: [
            CategoryComponent(
              containerHeight: 0.17,
              alignment: Alignment.topLeft,
              isPadding: true,
              fontsize: 13,
              containerWidth: 0.43,
              categoryText: "Paid",
              redirectPage: () {
                Get.to(Findjob(
                    isTopBar: false,
                    jobType: JobType.internship,
                    jobTitle: "Internships"));
              },
            ),
            const SizedBox(
              width: 15,
            ),
            CategoryComponent(
              containerHeight: 0.17,
              alignment: Alignment.topLeft,
              isPadding: true,
              fontsize: 13,
              containerWidth: 0.43,
              categoryText: "Virtual",
              // isPadding: true,
              redirectPage: () {
                Get.to(Findjob(
                    isTopBar: false,
                    jobType: JobType.internship,
                    jobTitle: "Internship"));
              },
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment:
              MainAxisAlignment.center,
          children: [
            CategoryComponent(
              containerHeight: 0.17,
              containerWidth: 0.43,
              alignment: Alignment.topLeft,
              isPadding: true,
              fontsize: 13,
              categoryText: "Certificate",
              redirectPage: () {
                Get.to(Findjob(
                    isTopBar: false,
                    jobType: JobType.internship,
                    jobTitle: "Internship"));
              },
            ),
            const SizedBox(
              width: 15,
            ),
            CategoryComponent(
              containerHeight: 0.17,
              containerWidth: 0.43,
              alignment: Alignment.topLeft,
              isPadding: true,
              fontsize: 14,
              categoryText: "Part-Time",
              redirectPage: () {
                Get.to(Findjob(
                    isTopBar: false,
                    jobType: JobType.internship,
                    jobTitle: "Internship"));
              },
            ),
          ],
        ),
      ],
    );
  }

  // Widget interships() {
  //   return Container(
  //     margin: const EdgeInsets.only(
  //         top: 15, left: 20, bottom: 20),
  //     width: Get.width * 1,
  //     child: Column(
  //       crossAxisAlignment:
  //           CrossAxisAlignment.start,
  //       children: [
  //         const Text(
  //           "Interships",
  //           style: TextStyle(
  //               color: Color(0xFF1C4980),
  //               fontWeight: FontWeight.w500,
  //               fontSize: 27),
  //         ),
  //         const Text(
  //           "Apply for full-time & part-time internships",
  //           style: TextStyle(
  //               color: Color(0xFF1C4980),
  //               fontWeight: FontWeight.w500,
  //               fontSize: 15),
  //         ),
  //         const SizedBox(
  //           height: 25,
  //         ),
  //         SingleChildScrollView(
  //           scrollDirection: Axis.horizontal,
  //           child: Row(children: [
  //             internshiptype("Paid"),
  //             internshiptype("Virtual"),
  //           ]),
  //         )
  //       ],
  //     ),
  //   );
  // }

  Widget internshiptype(String type) {
    return Container(
      padding: const EdgeInsets.only(
          top: 15, left: 15),
      margin: const EdgeInsets.only(right: 15),
      width: Get.width * 0.7,
      height: Get.height * 0.25,
      decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(5)),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          type,
          style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }

  Widget jobCategory() {
    var jobController = Get.put(JobController());
    return SizedBox(
      height: Get.height * 0.40,
      width: Get.width * 1,
      child: Center(
          child: Container(
        color: Colors.white,
        height: Get.height * .40,
        width: Get.width * 0.75,
        child: Column(
            mainAxisAlignment:
                MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment:
                    MainAxisAlignment
                        .spaceBetween,
                children: [
                  CategoryComponent(
                    categoryText:
                        "Hiring\nChallenges",
                    redirectPage: () =>
                        Get.to(Findjob(
                      jobTitle: "Hiring",
                          jobType: JobType.hiringChallenge,
                    )),
                  ),
                  CategoryComponent(
                    categoryText: "Jobs",
                    redirectPage: (){
                      Get.to(Findjob(
                        jobType: JobType.privateJobs,
                        jobTitle: "Private Jobs",
                      ),
                      );
                    }

                  ),
                ],
              ),
              Row(
                mainAxisAlignment:
                    MainAxisAlignment
                        .spaceBetween,
                children: [
                  CategoryComponent(
                    categoryText: "Internships",
                    redirectPage: () =>
                        Get.to(Findjob(
                          jobType: JobType.internship,
                      isTopBar: false,
                      jobTitle: "Internships",
                    )),
                  ),
                  CategoryComponent(
                    categoryText: "Govt Jobs",
                    redirectPage: () =>
                        Get.to(Findjob(
                          isTopBar: true,
                          jobType: JobType.govtJobs,
                      jobTitle: "Government Jobs",
                    )),
                  ),
                ],
              ),
            ]),
      )),
    );
  }

// Widget categoryComponent(String categoryText,
//     void Function() redirectPage) {
//   return InkWell(
//     onTap: redirectPage,
//     child: Container(
//       decoration: BoxDecoration(
//           image: DecorationImage(
//               image: AssetImage(
//                   'assets/searchjob.png'),
//               fit: BoxFit.cover,
//               opacity: 0.8),
//           color: Colors.grey,
//           borderRadius: BorderRadius.all(
//               Radius.circular(20))),
//       width: Get.width * 0.35,
//       height: Get.height * 0.175,
//       child: Padding(
//         padding:
//             EdgeInsets.only(top: 5.0, left: 6),
//         child: Align(
//             alignment: Alignment.topLeft,
//             child: Text(
//               categoryText,
//               style: TextStyle(
//                   fontWeight: FontWeight.w600,
//                   fontSize: 17),
//             )),
//       ),
//     ),
//   );
// }
}
