import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../modals/jobs/government_jobs.dart';

class Post extends StatelessWidget {
  final GovernmentJobs? govermentJobs;
   const Post({Key? key, required this.govermentJobs}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.start,
      // mainAxisAlignment:
      //     MainAxisAlignment.start,
      children: [
        important(),
        ageLimit("02/08/2023", "18", "18 - 25")
      ],
    );
  }

  Widget important() {
    return
    // return Row(
    //     crossAxisAlignment:
    //         CrossAxisAlignment.start,
    //     mainAxisAlignment:
    //         MainAxisAlignment.start,
    //     children: [
    //       SizedBox(
    //         width: Get.width * 0.45,
    //         child: Column(
    //           crossAxisAlignment:
    //               CrossAxisAlignment.start,
    //           children: const [
    //             Text(
    //               "Important Dates",
    //               style: TextStyle(
    //                 fontFamily: "DM Sans",
    //                 fontSize: 14,
    //                 fontWeight: FontWeight.w700,
    //                 color: Color(0xff150b3d),
    //               ),
    //               textAlign: TextAlign.left,
    //             ),
    //             SizedBox(
    //               height: 20,
    //             ),
    //             Text(
    //               "Application Begin : 30/06/2023",
    //               style: TextStyle(
    //                 fontFamily: "DM Sans",
    //                 fontSize: 12,
    //                 fontWeight: FontWeight.w400,
    //                 color: Color(0xff514a6b),
    //               ),
    //               textAlign: TextAlign.left,
    //             ),
    //             Text(
    //               "Last Date for Apply Online : 21/07/2023",
    //               style: TextStyle(
    //                 fontFamily: "DM Sans",
    //                 fontSize: 12,
    //                 fontWeight: FontWeight.w400,
    //                 color: Color(0xff514a6b),
    //               ),
    //               textAlign: TextAlign.left,
    //             ),
    //             Text(
    //               "Pay Fee Online Last Date : 22/07/2023",
    //               style: TextStyle(
    //                 fontFamily: "DM Sans",
    //                 fontSize: 12,
    //                 fontWeight: FontWeight.w400,
    //                 color: Color(0xff514a6b),
    //               ),
    //               textAlign: TextAlign.left,
    //             ),
    //             Text(
    //               "Correction Date : 26-28 July 2023",
    //               style: TextStyle(
    //                 fontFamily: "DM Sans",
    //                 fontSize: 12,
    //                 fontWeight: FontWeight.w400,
    //                 color: Color(0xff514a6b),
    //               ),
    //               textAlign: TextAlign.left,
    //             ),
    //             Text(
    //               "CBT Exam Date Paper I : September 2023",
    //               style: TextStyle(
    //                 fontFamily: "DM Sans",
    //                 fontSize: 12,
    //                 fontWeight: FontWeight.w400,
    //                 color: Color(0xff514a6b),
    //               ),
    //               textAlign: TextAlign.left,
    //             ),
    //             Text(
    //               "Paper II Exam Date: As per Schedule",
    //               style: TextStyle(
    //                 fontFamily: "DM Sans",
    //                 fontSize: 12,
    //                 fontWeight: FontWeight.w400,
    //                 color: Color(0xff514a6b),
    //               ),
    //               textAlign: TextAlign.left,
    //             )
    //           ],
    //         ),
    //       ),
          SizedBox(
            // width: Get.width * 0.45,
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [

                Text(
                  "Important Dates",
                  style: TextStyle(
                    fontFamily: "DM Sans",
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff150b3d),
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Application Begin : ${govermentJobs?.applicationDate??""}",
                  style: TextStyle(
                    fontFamily: "DM Sans",
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff514a6b),
                  ),
                  textAlign: TextAlign.left,
                ),
                 Text(
                  "Last Date for Apply Online : ${govermentJobs?.applicationDate??""}",
                  style: TextStyle(
                    fontFamily: "DM Sans",
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff514a6b),
                  ),
                  textAlign: TextAlign.left,
                ),
                Text(
                  "Pay Fee Online Last Date : ${govermentJobs?.applicationDate??""}",
                  style: const TextStyle(
                    fontFamily: "DM Sans",
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff514a6b),
                  ),
                  textAlign: TextAlign.left,
                ),
                Text(
                  "Correction Date : ${govermentJobs?.applicationDate??""}",
                  style: TextStyle(
                    fontFamily: "DM Sans",
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff514a6b),
                  ),
                  textAlign: TextAlign.left,
                ),
                Text(
                  "CBT Exam Date Paper I : ${govermentJobs?.expectedExamDate??""}",
                  style: TextStyle(
                    fontFamily: "DM Sans",
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff514a6b),
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          );
        // ]);
  }

  Widget ageLimit(
    String ageOn,
    String minAge,
    String maxAge,
  ) {
    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
        ),
        Text(
          "Age Limit As on $ageOn",
          style: const TextStyle(
            fontFamily: "DM Sans",
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: Color(0xff150b3d),
          ),
          textAlign: TextAlign.left,
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding:
              const EdgeInsets.only(left: 10.0),
          child: Text(
            "Minimum Age : $minAge\nYears Maximum Age : $maxAge Years (Post Wise)\nAge Relaxation Extra as per SSC Multi Tasking & Havaldar Recruitment Rules 2023.",
            style: const TextStyle(
              fontFamily: "DM Sans",
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color(0xff514a6b),
            ),
            textAlign: TextAlign.left,
          ),
        )
      ],
    );
  }
}
