// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ProgressTracker extends StatefulWidget {
  Alignment align;

  ProgressTracker({Key? key, required this.align})
      : super(key: key);

  @override
  State<ProgressTracker> createState() =>
      _ProgressTrackerState();
}

class _ProgressTrackerState
    extends State<ProgressTracker> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: widget.align,
      child: Card(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
                Radius.circular(15))),
        elevation: 1,
        child: Container(
          width: Get.width * 0.8,
          height: Get.height * 0.16,
          decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.circular(40)),
          child: Padding(
            padding: const EdgeInsets.only(
                top: 20,
                left: 15,
                right: 15,
                bottom: 1),
            child: Column(children: [
              Row(
                mainAxisAlignment:
                    MainAxisAlignment
                        .spaceBetween,
                children: [
                  Text(
                    "Learned Today",
                    style: GoogleFonts.poppins(
                        fontWeight:
                            FontWeight.w400,
                        color: Colors.grey[600]),
                  ),
                  Text(
                    "My courses",
                    style: GoogleFonts.poppins(
                        fontWeight:
                            FontWeight.w400,
                        color: const Color(
                            0xFF3D5CFF)),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    '46min',
                    style: GoogleFonts.poppins(
                        fontWeight:
                            FontWeight.w900,
                        fontSize: 20,
                        color: const Color(
                            0xFF1F1F39)),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    '/ 60 min',
                    style: GoogleFonts.poppins(
                        fontWeight:
                            FontWeight.w300,
                        fontSize: 12,
                        color: const Color(
                            0xFF1F1F39)),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const LinearProgressIndicator(
                value: 10,
                color: Colors.red,
              )
            ]),
          ),
        ),
      ),
    );
  }
}
