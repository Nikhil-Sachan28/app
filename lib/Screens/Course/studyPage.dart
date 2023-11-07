import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobsearch/Components/productCard.dart';
import 'package:jobsearch/Components/searchFilter.dart';
import 'package:jobsearch/Controller/job_controller.dart';
import 'package:jobsearch/Details/course_detail_page.dart';
import 'package:jobsearch/Controller/course_controller.dart';
// import 'package:jobsearch/Model/Jobs/GovernmentJob.dart';

class StudyPage extends StatefulWidget {
  final id;
  const StudyPage({super.key, this.id});

  @override
  State<StudyPage> createState() => _StudyPageState();
}

class _StudyPageState extends State<StudyPage> {

  CourseController courseController = Get.put(CourseController());
  @override
  void initState() {
    // TODO: implement initState
    if(widget.id!=null){
      courseController.fetchSpecificCourses(widget.id);
      print(widget.id);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        title: Container(
            child: appTextField()),
        backgroundColor:
        const Color(0xFF3D5CFF),
      ),
      body: GetBuilder<JobController>(
        builder: (jobController){
          return Column(children: [
            Row(
              mainAxisAlignment:
              MainAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(
                      top: 18, left: 15),
                  child: const Text(
                      'Choose your course',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'poppins',
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF1F1F39),
                      )),
                ),
              ],
            ),
            Container(
              color: Colors.grey[300],
              width: Get.width * 1,
              height: 40,
              child: Container(
                margin: const EdgeInsets.symmetric(
                    horizontal: 15),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(
                      vertical: 5),
                  itemBuilder: (context, index) =>
                      courseChoice("Web $index"),
                ),
              ),
            ),
            Expanded(

                child: Obx( ()=> widget.id==null?
                    ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: courseController.allCourse.length,
                      itemBuilder: (context, index) =>
                          ProductCard(
                            onTapCommand: () =>
                            Get.to(
                            CourseDetailPage(course : courseController.allCourse[index])),
                            // courseName:jobController.allGovernmentJobs[index].title,
                              courseName:courseController.allCourse[index].courseName??"",
                              lesson: courseController.allCourse[index].totalLectures??0,
                              level: "Expert",
                              star: courseController.allCourse[index].rating??0,
                              student: courseController.allCourse[index].studentsEnrolled??0,
                              courseimage:
                              "https://wallpaperaccess.com/full/2637581.jpg",
                          )
                  ):courseController.instituteCourse.length>0?
                ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: courseController.instituteCourse.length,
                    itemBuilder: (context, index) =>
                        ProductCard(
                          onTapCommand: () =>
                              Get.to(
                                  CourseDetailPage(course : courseController.instituteCourse[index])),
                          // courseName:jobController.allGovernmentJobs[index].title,
                          courseName:courseController.instituteCourse[index].courseName??"",
                          lesson: courseController.instituteCourse[index].totalLectures??0,
                          level: "Expert",
                          star: courseController.instituteCourse[index].rating??0,
                          student: courseController.instituteCourse[index].studentsEnrolled??0,
                          courseimage:
                          "https://wallpaperaccess.com/full/2637581.jpg",
                        )
                ):
                    Center(
                      child: Text("no course exists"),

                    )

                )
            )
          ]);
        },
      ),
    );
  }
}


  Widget appTextField() {
    return Container(
        decoration: const BoxDecoration(
            color: Color(0xFFF4F3FD),
            borderRadius: BorderRadius.all(
                Radius.circular(10))),
        width: Get.height * 0.5,
        height: 45,
        child: Center(
            child: TextField(
          decoration: InputDecoration(
            hintText: 'Find Course',
            prefixIcon: const Icon(Icons.search),
            suffixIcon: InkWell(
                onTap: () =>
                    Get.to(const SearchFilter()),
                child: const Icon(
                    Icons.filter_list)),
          ),
        )));
  }

  courseChoice(String category) {
    return Container(
      height: 37,
      width: Get.width * 0.2,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius:
              BorderRadius.circular(10)),
      child: Center(
        child: Text(
          category,
          style: GoogleFonts.roboto(
              color: const Color(0xFF454545),
              fontWeight: FontWeight.bold,
              fontSize: 12),
        ),
      ),
    );
  }

