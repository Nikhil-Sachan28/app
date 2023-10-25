// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

class AccountCells extends StatelessWidget {
  String text;
  dynamic onTap;
  final IconData? isIcon;

  AccountCells(
      {super.key,
      required this.text,
      required this.onTap,
      this.isIcon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.to(onTap),
      child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20),

          child: Container(
            padding: const EdgeInsets.only(
                left: 20, right: 15),
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    isIcon == null
                        ? const Icon(Icons
                            .card_giftcard_outlined)
                        : Icon(isIcon),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      text,
                      style: GoogleFonts.poppins(
                          fontSize: 17,
                          fontWeight:
                              FontWeight.w500,
                          color: const Color(
                              0xFF1F1F39)),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Icon(
                    Icons
                        .arrow_forward_ios_outlined,
                    color: Colors.grey[800],
                    size: 17,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
