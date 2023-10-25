import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsearch/Details/after12th.dart';
import 'package:jobsearch/Details/postGraduation.dart';

class CourseSelect extends StatefulWidget {
  const CourseSelect({Key? key})
      : super(key: key);

  @override
  State<CourseSelect> createState() =>
      _CourseSelectState();
}

List<Widget> topViewList = [
  const After12th(),
  const PostGraduation(),
];

var topindex = 0;

class _CourseSelectState
    extends State<CourseSelect> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.grey,
      home: DefaultTabController(
          length: 2,
          child: Scaffold(
              appBar: PreferredSize(
                preferredSize: Size.fromHeight(
                    Get.height * 0.12),
                child: AppBar(
                  backgroundColor: Colors.white,
                  leading: InkWell(
                      onTap: () => Get.back(),
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      )),
                  bottom: const TabBar(
                    labelStyle: TextStyle(
                        fontSize: 16,
                        fontWeight:
                            FontWeight.w700),
                    labelColor: Colors.black,
                    indicatorColor: Colors.black,
                    unselectedLabelColor:
                        Colors.pink,
                    tabs: [
                      Tab(
                        text: 'After 12th',
                      ),
                      Tab(
                        text: 'Post Graduation',
                      ),
                    ],
                  ),
                ),
              ),
              body: topViewList[topindex])),
    );
  }
}
