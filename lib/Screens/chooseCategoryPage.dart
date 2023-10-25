import 'package:flutter/material.dart';

import '../Components/categoryCard.dart';

class ChooseCategoryPage extends StatelessWidget {
  const ChooseCategoryPage({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // leading: IconButton(
          //     onPressed: () {
          //       Get.back();
          //     },
          //     icon: InkWell(
          //         onTap: () => Get.back(),
          //         child:
          //             Icon(Icons.arrow_back))),
          ),
      body: Column(children: [
        Align(
          alignment: Alignment.center,
          child: Container(
            margin:
                const EdgeInsets.only(top: 10),
            height: 40,
            child: const Text(
              "Choose Category",
              style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 25,
                fontWeight: FontWeight.w500,
                color: Color(0xff1f1f39),
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        CategoryCard(
          categoryimage: "category.jpg",
          categoryname: 'TECH COURSES',
        ),
        CategoryCard(
          categoryimage: "category.jpg",
          categoryname: 'TECH COURSES',
        ),
        CategoryCard(
          categoryimage: "category.jpg",
          categoryname: 'TECH COURSES',
        ),
        CategoryCard(
          categoryimage: "category.jpg",
          categoryname: 'TECH COURSES',
        ),
        CategoryCard(
          categoryimage: "category.jpg",
          categoryname: 'TECH COURSES',
        ),
      ]),
    );
  }
}
