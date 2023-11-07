import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../modals/jobs/government_jobs.dart';

class AboutUs extends StatelessWidget {
  // String aboutUsDetail;
  GovernmentJobs? govermentJobs;
  AboutUs({required this.govermentJobs,Key? key}) : super(key: key);

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
              "About Job",
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
            Text(govermentJobs?.jobDecription??''),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Exam organization",
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
             Text(
              govermentJobs?.examOrganization??"",
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
              "Exam fee",
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
            Text(
              govermentJobs?.examFee??"",
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
              "Selection Process",
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
            Text(
              govermentJobs?.selectionProcess??"",
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
              "Salary",
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
            Text(
              govermentJobs?.salary??"",
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
