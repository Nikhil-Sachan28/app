import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsearch/Stationary/Component/stationaryAppBar.dart';
import 'package:jobsearch/Stationary/Component/categoryContainer.dart';
import 'package:jobsearch/Stationary/Component/topImageBanner.dart';

class StationaryHomePage extends StatelessWidget {
  const StationaryHomePage({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: StationaryAppBar(
            isBottomTrue: false,
            isLeadingIcon: true),
      ),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment:
                MainAxisAlignment.start,
            children: [
              TopImageBanner(sliderHeight: 0.3),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.only(
                    top: 10, bottom: 10),
                child: const Center(
                  child: Text(
                    "Search by category",
                    style: TextStyle(
                      fontFamily: "Quicksand",
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff2d2d2d),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(
                      left: 10),
                  height: Get.height * 0.40,
                  width: Get.width * 1,
                  child:
                      const StationaryCategoryCard())
            ]),
      ),
    );
  }
}
