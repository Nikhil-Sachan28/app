// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryComponent extends StatelessWidget {
  String categoryText;
  void Function() redirectPage;
  double? fontsize;
  Alignment alignment;
  num containerHeight;
  num containerWidth;
  bool isPadding;

  CategoryComponent({
    Key? key,
    this.fontsize = 15,
    this.isPadding = false,
    this.containerHeight = 0.175,
    this.containerWidth = 0.35,
    this.alignment = Alignment.topCenter,
    required this.redirectPage,
    required this.categoryText,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: redirectPage,
      child: Container(
        padding: isPadding
            ? EdgeInsets.only(left: 15)
            : EdgeInsets.zero,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    'assets/searchjob.png'),
                fit: BoxFit.cover,
                opacity: 0.8),
            color: Colors.grey,
            borderRadius: BorderRadius.all(
                Radius.circular(20))),
        width: Get.width * containerWidth,
        height: Get.height * containerHeight,
        child: Padding(
          padding:
              EdgeInsets.only(top: 8.0, left: 6),
          child: Align(
              alignment: alignment,
              child: Text(
                categoryText,
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: fontsize),
              )),
        ),
      ),
    );
  }
}
