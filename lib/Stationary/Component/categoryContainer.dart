import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Screen/categoryPage.dart';

class StationaryCategoryCard
    extends StatelessWidget {
  const StationaryCategoryCard({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context, index) => Container(
        margin: const EdgeInsets.only(right: 15),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () =>
                  Get.to(const CategoryPage()),
              child: Container(
                width: Get.width * 0.40,
                height: Get.width * 0.36,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage(
                            "assets/product.png"),
                        fit: BoxFit.cover),
                    color: Colors.grey,
                    borderRadius:
                        BorderRadius.circular(
                            15)),
              ),
            ),
            Container(
              margin:
                  const EdgeInsets.only(top: 7),
              child: const Text(
                "Artist Pads",
                style: TextStyle(
                  fontFamily: "Quicksand",
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff2d2d2d),
                  // height: 30 / 10,
                ),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
