import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DeliveryReturn extends StatelessWidget {
  const DeliveryReturn({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Delivery and returns",
          style: TextStyle(
            fontFamily: "Quicksand",
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: Color(0xff2d2d2d),
          ),
          textAlign: TextAlign.left,
        ),
        actions: [
          SizedBox(
              width: 50,
              child: InkWell(
                  onTap: () => Get.back(),
                  child: const Icon(
                    Icons.cancel_outlined,
                    color: Colors.black,
                  )))
        ],
      ),
      body: Container(
        height: Get.height * 1,
        margin: const EdgeInsets.only(
            left: 15, right: 10, top: 10),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,
          children: [
            Text(
              "Delivery",
              style: TextStyle(
                  fontFamily: "Quicksand",
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff2d2d2d),
                  height: 1.5),
              textAlign: TextAlign.left,
            ),
            Text(
              "Xpress Delivery",
              style: TextStyle(
                  fontFamily: "Quicksand",
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff2d2d2d),
                  height: 3),
              textAlign: TextAlign.left,
            ),
            Text(
              "Same or next day",
              style: TextStyle(
                fontFamily: "Quicksand",
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: Color(0xff2d2d2d),
              ),
              textAlign: TextAlign.left,
            ),
            Text(
              "Regular Delivery",
              style: TextStyle(
                  fontFamily: "Quicksand",
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff2d2d2d),
                  height: 3),
              textAlign: TextAlign.left,
            ),
            Text(
              "1-2 day",
              style: TextStyle(
                fontFamily: "Quicksand",
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: Color(0xff2d2d2d),
              ),
              textAlign: TextAlign.left,
            ),
            Text(
              "Special items Delivery",
              style: TextStyle(
                  fontFamily: "Quicksand",
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff2d2d2d),
                  height: 3),
              textAlign: TextAlign.left,
            ),
            Text(
              "7-10 day",
              style: TextStyle(
                fontFamily: "Quicksand",
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: Color(0xff2d2d2d),
              ),
              textAlign: TextAlign.left,
            ),
            Text(
              "Free Delivery",
              style: TextStyle(
                  fontFamily: "Quicksand",
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff2d2d2d),
                  height: 3),
              textAlign: TextAlign.left,
            ),
            Text(
              "Shipping is free for all prepaid/COD orders above RS 50.",
              style: TextStyle(
                fontFamily: "Quicksand",
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: Color(0xff2d2d2d),
              ),
              textAlign: TextAlign.left,
            ),
            Text(
              "Returns",
              style: TextStyle(
                  fontFamily: "Quicksand",
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff2d2d2d),
                  height: 3),
              textAlign: TextAlign.left,
            ),
            Text(
              "Hassle-free returns for 7 Days via our shop. Please keep the product in its original condition.",
              style: TextStyle(
                fontFamily: "Quicksand",
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: Color(0xff2d2d2d),
              ),
              textAlign: TextAlign.left,
            ),
          ],
        ),
      ),
    );
  }
}
