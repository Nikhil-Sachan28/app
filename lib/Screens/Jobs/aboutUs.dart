import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AboutUs extends StatelessWidget {
String aboutUsDetail;
AboutUs({required this.aboutUsDetail,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: 5, horizontal: 10),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,
          children: [
            const Text(
              "About Company",
              style: TextStyle(
                fontFamily: "DM Sans",
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color(0xff150b3d),
              ),
              textAlign: TextAlign.left,
            ),
            const SizedBox(
              height: 15,
            ),
            Text(aboutUsDetail),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Website",
              style: TextStyle(
                fontFamily: "DM Sans",
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color(0xff150b3d),
              ),
              textAlign: TextAlign.left,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "https://ssc.nic.in/",
              style: TextStyle(
                fontFamily: "DM Sans",
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(0xff1da1f2),
              ),
              textAlign: TextAlign.left,
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Download Notification",
              style: TextStyle(
                fontFamily: "DM Sans",
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color(0xff150b3d),
              ),
              textAlign: TextAlign.left,
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "Click Here",
              style: TextStyle(
                fontFamily: "DM Sans",
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(0xff514a6b),
              ),
              textAlign: TextAlign.left,
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Download Region Wise Vacancy Details",
              style: TextStyle(
                fontFamily: "DM Sans",
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color(0xff150b3d),
              ),
              textAlign: TextAlign.left,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Click Here",
              style: TextStyle(
                fontFamily: "DM Sans",
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(0xff514a6b),
              ),
              textAlign: TextAlign.left,
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Head office",
              style: TextStyle(
                fontFamily: "DM Sans",
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color(0xff150b3d),
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(
              height: Get.height * .20,
            )
          ],
        ),
      ),
    );
  }
}
