import 'package:flutter/material.dart';

import 'package:jobsearch/Components/instituteCard.dart';
import 'package:jobsearch/Components/topFilter.dart';
import 'package:get/get.dart';
import 'package:jobsearch/Controller/institute_controller.dart';
import 'package:jobsearch/Screens/Institutes/instituteDetail.dart';

import '../../Components/SearchBar.dart'
    as SearchBar;
import '../../Components/SearchBar.dart';

class InstituteMainPage extends StatefulWidget {
  const InstituteMainPage({Key? key})
      : super(key: key);

  @override
  State<InstituteMainPage> createState() =>
      _InstituteMainPageState();
}

class _InstituteMainPageState
    extends State<InstituteMainPage> {

  InstituteController instituteController = InstituteController();

  @override
  void initState() {
    // TODO: implement initState
    instituteController.fetchInstitute();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF266FDE),
        centerTitle: true,
        title: SearchBar.SearchBar(
          hintText: "Find Institute",
        ),
      ),
      body: Column(children: [
        TopFilter(),
        // RefreshIndicator(child: child, onRefresh: onRefresh)
        Expanded(
          child: Obx( () =>
              ListView.builder(
              padding: const EdgeInsets.symmetric(
                  horizontal: 30),
              itemCount: instituteController.allInstitute.length,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) =>
                  Container(
                margin: const EdgeInsets.only(
                    bottom: 25),
                  child: InkWell(
                    onTap: () =>
                        Get.to(InstituteDetail(institute: instituteController.allInstitute[index])),
                    child: InstituteCard(showDetail: true,institute: instituteController.allInstitute[index],),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
