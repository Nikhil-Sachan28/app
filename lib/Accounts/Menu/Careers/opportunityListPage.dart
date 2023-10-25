import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsearch/Accounts/Menu/Careers/opportunityListView.dart';

import '../../../Configs/Constants.dart';
import '../../../Screens/Jobs/findjob.dart';
import '../../../Screens/Jobs/resultPage.dart';
class OpportunityListPage extends StatefulWidget {
  OpportunityListPage({super.key});

  @override
  State<OpportunityListPage> createState() => _OpportunityListPageState();
}

class _OpportunityListPageState extends State<OpportunityListPage> {
  List<Widget> topViewList = [
   OpportunityListView(listtype: 1),
   OpportunityListView(listtype: 2,),
   OpportunityListView(listtype: 3),
  ];

  var indexvalue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context)
            .scaffoldBackgroundColor,
        elevation: 0,
        centerTitle: false,
        title: const Text(
          "Opportunities at ${Constants.CompanyName}",
          style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w600),
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
      body: Container(
        color: Color(0xFFFFFFFF),
        child: Column(
        children: [
          SizedBox(height: 20,),
          tabBar(),
          SizedBox(height: 10,),
          Expanded(child: topViewList[indexvalue],),
        ],
    ),
      ),);
  }

  Widget tabBar() {
    return Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20,),
          width: Get.width * 1,
          height: Get.height * 0.05,
          // padding: const EdgeInsets.symmetric(
          //     horizontal: 4, vertical: 3),
          decoration: BoxDecoration(
            color: Color(0xFFFFFFFF),
              border: Border.all(width: 1, color: Colors.black38),
              borderRadius:
              BorderRadius.circular(30)),
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
                    BorderRadius.circular(30),
                    color: const Color(0xFF1DA1F2)),
                tabs: const [
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "All",
                        style: TextStyle(

                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("Jobs",   style: TextStyle(

                          fontSize: 15,
                          fontWeight: FontWeight.w500),),
                    ),
                  ),
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("Internships",    style: TextStyle(

                          fontSize: 15,
                          fontWeight: FontWeight.w500),),
                    ),
                  ),
                ]),
          ),
        ));
  }
}
