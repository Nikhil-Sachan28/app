import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationSmall extends StatelessWidget {
  String title;
  String timeupdated;

  NotificationSmall(
      {Key? key,
      required this.title,
      required this.timeupdated})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      borderOnForeground: true,
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius:
                BorderRadius.circular(15)),
        width: Get.width * .9,
        margin: const EdgeInsets.only(bottom: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius:
                        BorderRadius.circular(
                            10)),
                height: 45,
                width: 45,
              ),
              title: Flexible(
                child: Text(
                  title,
                  style: const TextStyle(
                    overflow:
                        TextOverflow.ellipsis,
                    fontFamily: "Poppins",
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff1f1f39),
                    height: 18 / 12,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              subtitle: Row(
                children: [
                  const Icon(
                    Icons
                        .access_time_filled_outlined,
                    size: 15,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    timeupdated,
                    style: const TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffb8b8d2),
                      height: 18 / 12,
                    ),
                    textAlign: TextAlign.left,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
