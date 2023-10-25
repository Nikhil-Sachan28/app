import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Message extends StatelessWidget {
  const Message({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        // height: Get.height * 0.70,
        width: Get.width * 1,

        // color: Colors.grey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.start,
            children: [
              messageFormate(false),
              messageFormate(true),
              messageFormate(true),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget messageFormate(bool contentimage) {
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
                height: 40,
                width: 40,
              ),
              title: const Text(
                "Bert Pullman",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff1f1f39),
                  height: 18 / 12,
                ),
                textAlign: TextAlign.left,
              ),
              subtitle: const Text(
                "Online",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff858597),
                  height: 18 / 12,
                ),
                textAlign: TextAlign.left,
              ),
              trailing: Container(
                  margin: const EdgeInsets.only(
                      bottom: 15),
                  child: const Text(
                    "04:32 pm",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff858597),
                      height: 18 / 12,
                    ),
                    textAlign: TextAlign.left,
                  )),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 15),
              child: Text(
                "Congratulations on completing the first lessonkeep up the good work!",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff858597),
                ),
                textAlign: TextAlign.left,
              ),
            ),
            contentimage
                ? Padding(
                    padding: const EdgeInsets
                            .symmetric(
                        horizontal: 15,
                        vertical: 10),
                    child: Container(
                      height: Get.height * 0.2,
                      width: Get.width * 1,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(
                                15),
                        color: Colors.grey[300],
                      ),
                    ),
                  )
                : const SizedBox()
          ],
        ),
      ),
    );
  }
}
