import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsearch/Accounts/Menu/Careers/opportunityDetailPage.dart';
import 'package:jobsearch/Accounts/Menu/Careers/opportunityListPage.dart';
import 'package:jobsearch/Accounts/Menu/menuContactUs.dart';
import 'package:jobsearch/Configs/Constants.dart';

class CareersPage extends StatelessWidget {
  const CareersPage({Key? key})
      : super(key: key);

  _topSection() {
    return Container(
      width: Get.width * 1,
      color: const Color(0xFFFFFFFF),
      padding: const EdgeInsets.only(
          left: 10, right: 10, top: 15),
      child: Column(
        crossAxisAlignment:
        CrossAxisAlignment.start,
        children: [
          const Text(
            "Careers at",
            style: TextStyle(
              fontFamily: "Avenir Next",
              fontSize: 30,
              height: 1.4,
              fontWeight: FontWeight.w400,
              color: Color(0xFF000000),
            ),
            textAlign: TextAlign.start,
          ),
          const Text(
            Constants.CompanyName,
            style: TextStyle(
                fontFamily: "Avenir Next",
                fontSize: 35,
                fontWeight: FontWeight.w600,
                color: Color(0xFF000000),
                height: 1.1),
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
          const Text(
            "Do you think you have what it takes to be Part of ${Constants.CompanyName}?",
            style: TextStyle(
              fontFamily: "Inter",
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Color(0xff000000),
            ),
            textAlign: TextAlign.start,
          ),
          const SizedBox(
            height: 20,
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
                Get.to(OpportunityListPage());
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 15.0,
                    vertical: 6),
                child: Text(
                  "Join Now",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffffffff),
                  ),
                  textAlign: TextAlign.left,
                ),
              )),
          const SizedBox(height: 30,)

        ],
      ),
    );
  }

  _audience() {
    return Container(
      color: const Color(0xFFFFFFFF),
      width: Get.width * 1,
      child: Column(
        children: [
          const Text(
            "Perks & Benefits",
            style: TextStyle(
                fontFamily: "Avenir Next",
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: Color(0xFF000000),
                height: 1.1),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            width: 100,
            child: Divider(
              height: 40,
              thickness: 2.5,
              color: Color(0xFF000000),
            ),
          ),
          Wrap(
            spacing: 15,
            runSpacing: 15,
            alignment: WrapAlignment.spaceBetween,
            children: [
              decorativeContainer(

                  'Flexible working Hours',
                  Icons.touch_app_outlined, const Color(0xFF1257E1)),
              decorativeContainer(

                  'Medical Coverage',
                  Icons.monitor_heart_outlined, const Color(0xFF398406)),
              decorativeContainer(

                  'On-the-Job Training',
                  Icons.auto_graph_outlined, const Color(0xFFFF0000)),
              decorativeContainer(

                  'Competitive Salary',
                  Icons.wallet_giftcard_outlined, const Color(0xFFE80620)),


            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: Theme.of(context)
            .scaffoldBackgroundColor,
        elevation: 0,
        centerTitle: false,
        title: const Text(
          "Careers",
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
        child: Column(
            crossAxisAlignment:
            CrossAxisAlignment.center,
            children: [
              _topSection(),
              const SizedBox(
                height: 25,
              ),
              _audience()
            ]),
      ),
    );
  }

  Widget decorativeContainer(
       String category, IconData mainIcon , Color iconColor) {
    return Container(
      padding: const EdgeInsets.only(
          top: 4, left: 10, right: 10),
      decoration: BoxDecoration(
          color:  iconColor.withOpacity(0.2),
          borderRadius:
          BorderRadius.circular(10)),
      width: Get.width * 0.43,
      height: Get.height * 0.20,
      child: Column(
        crossAxisAlignment:
        CrossAxisAlignment.center,
        mainAxisAlignment:
        MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 15),
            padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(color: const Color(0xFFFFFFFF),
                  
                  borderRadius: BorderRadius.circular(7)),
              child: Icon(mainIcon, color: iconColor,)),
          Text(
            category,
            style: const TextStyle(
              fontFamily: "Kanit",
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Color(0xff1d1d23),
            ),
            textAlign: TextAlign.center,
          ),

        ],
      ),
    );
  }
}
