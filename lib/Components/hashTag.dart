import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HashTag extends StatelessWidget {
  const HashTag({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: Container(
        margin: const EdgeInsets.only(
            left: 10, top: 10, bottom: 10),
        padding:
            const EdgeInsets.symmetric(horizontal: 15),
        height: 25,
        decoration: BoxDecoration(
            border: Border.all(
                width: 0.5,
                color: const Color(0xFF7BAEF1)),
            borderRadius:
                BorderRadius.circular(15)),
        child: const Center(
            child: Text(
          "#Case Study",
          style: TextStyle(
            fontFamily: "Quicksand",
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(0xff2d2d2d),
          ),
          textAlign: TextAlign.left,
        )),
      ),
    );
  }
}
