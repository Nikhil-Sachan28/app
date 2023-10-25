import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsearch/Stationary/Component/ProductListAppBar.dart';

import '../Component/stationaryProductCard.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: ProductListAppBar()),
      body: SizedBox(
        width: Get.width * 1,
        height: Get.height * 1,
        child: GridView.builder(
          itemCount: 10,
          scrollDirection: Axis.vertical,
          gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            // mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 0.75,
          ),
          itemBuilder: (context, index) =>
              StationaryProductCard(
            isRoundCorner: false,
          ),
        ),
      ),
    );
  }
}
