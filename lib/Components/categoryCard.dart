// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Details/courseSelect.dart';

class CategoryCard extends StatefulWidget {
  String categoryimage;
  String categoryname;

  CategoryCard(
      {Key? key,
      required this.categoryimage,
      required this.categoryname})
      : super(key: key);

  @override
  State<CategoryCard> createState() =>
      _CategoryCardState();
}

class _CategoryCardState
    extends State<CategoryCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 1,
      height: Get.height * 0.1,
      margin: const EdgeInsets.only(
          top: 10, right: 10, left: 10),
      // padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          border: Border.all(width: 0.3),
          borderRadius: const BorderRadius.all(
              Radius.circular(15))),
      child: Container(
          margin: const EdgeInsets.only(
              left: 10, right: 10),
          child: Row(
            mainAxisAlignment:
                MainAxisAlignment.center,
            crossAxisAlignment:
                CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
                width: 30,
                child: Image.asset(
                    "assets/${widget.categoryimage}"),
              ),
              const SizedBox(
                width: 30,
              ),
              Text(
                widget.categoryname,
                style: const TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff010100),
                ),
              ),
              const Expanded(
                child: SizedBox(),
              ),
              InkWell(
                onTap: () =>
                    Get.to(const CourseSelect()),
                child: const Icon(Icons
                    .arrow_forward_ios_outlined),
              )
            ],
          )),
    );
  }
}
