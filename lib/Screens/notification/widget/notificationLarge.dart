import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationLarge extends StatelessWidget {
  bool isRead;
  String title;
  String content;
  String buttonText;

  NotificationLarge(
      {Key? key,
      required this.isRead,
      required this.title,
      required this.content,
      required this.buttonText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      borderOnForeground: true,
      elevation: isRead ? 2 : 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        decoration: BoxDecoration(
            color: isRead
                ? Colors.white
                : const Color(0xFFF1EEFF),
            borderRadius:
                BorderRadius.circular(15)),
        width: Get.width * .9,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 15,
            ),
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
              subtitle: Container(
                margin:
                    const EdgeInsets.only(top: 5),
                child: Text(
                  content,
                  style: const TextStyle(
                    color: Colors.black54,
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              trailing: const Padding(
                padding:
                    EdgeInsets.only(bottom: 20.0),
                child:
                    Icon(Icons.more_vert_rounded),
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(
                  width: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      border:
                          Border.all(width: 1),
                      borderRadius:
                          BorderRadius.circular(
                              10)),
                  child: Padding(
                    padding: const EdgeInsets
                            .symmetric(
                        vertical: 7,
                        horizontal: 13),
                    child: Text(
                      buttonText,
                      style: const TextStyle(
                        fontFamily: "DM Sans",
                        fontSize: 12,
                        fontWeight:
                            FontWeight.w400,
                        color: Color(0xff010100),
                        height: 16 / 12,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                const Text(
                  "25 min",
                  style: TextStyle(
                    fontFamily: "DM Sans",
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffaaa6b9),
                    height: 13 / 10,
                  ),
                  textAlign: TextAlign.left,
                )
              ],
            ),
            const SizedBox(
              height: 15,
            )
          ],
        ),
      ),
    );
  }
}
