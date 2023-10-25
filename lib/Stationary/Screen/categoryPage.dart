import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsearch/Stationary/Component/circularCategoryContainer.dart';
import 'package:jobsearch/Stationary/Component/topImageBanner.dart';
import 'package:jobsearch/Stationary/ProductSellingCategory/productSellingCategory.dart';

import '../Component/stationaryAppBar.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child:
            StationaryAppBar(isLeadingIcon: true),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.start,
          children: [
            TopImageBanner(sliderHeight: 0.27),
            Container(
              margin: const EdgeInsets.symmetric(
                  vertical: 10),
              child: const Center(
                  child: Text(
                "Art and craft",
                style: TextStyle(
                  fontFamily: "Quicksand",
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff2d2d2d),
                ),
                textAlign: TextAlign.left,
              )),
            ),
            Container(
                margin: const EdgeInsets.only(
                    left: 10),
                height: Get.height * 0.18,
                width: Get.width * 1,
                child:
                    const CircularCategoryCard()),
            ProductSellingCategory(
                topTitle: "Best Selling"),
            ProductSellingCategory(
                topTitle: "New Arrivals"),
          ],
        ),
      ),
    );
  }
}
