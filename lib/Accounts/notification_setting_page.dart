import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationSetting extends StatefulWidget {
  const NotificationSetting({Key? key})
      : super(key: key);

  @override
  State<NotificationSetting> createState() =>
      _NotificationSettingState();
}

bool switchValue = false;
bool switchValue1 = false;
bool switchValue2 = false;
bool switchValue3 = false;

class _NotificationSettingState
    extends State<NotificationSetting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: const Color(0xffffffff),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () => Get.back(),
        ),
        centerTitle: true,
        title: const Text(
          "Notification Setting",
          style: TextStyle(
            fontFamily: "Quicksand",
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Color(0xff2d2d2d),
          ),
          textAlign: TextAlign.left,
        ),
      ),
      body: Column(children: [
        const SizedBox(
          height: 20,
        ),
        notificationtype(
            "SALES AND OFFERS", switchValue),
        const Divider(thickness: 1),
        notificationtype("TRAINING ACHIEVEMENTS",
            switchValue1),
        const Divider(thickness: 1),
        notificationtype(
            "WEEKLY REPORTS", switchValue2),
        const Divider(thickness: 1),
        notificationtype(
            "CONTENT REVIEWS", switchValue3),
        const Divider(thickness: 1),
      ]),
    );
  }

  Widget notificationtype(
      String typelabel, bool switchvalue) {
    return Padding(
      padding: const EdgeInsets.only(
          left: 20.0, right: 20, bottom: 10),
      child: Row(
        mainAxisAlignment:
            MainAxisAlignment.spaceBetween,
        children: [
          Text(
            typelabel,
            style: const TextStyle(
              fontFamily: "Quicksand",
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color(0xff29367c),
              height: 24 / 16,
            ),
            textAlign: TextAlign.left,
          ),
          CupertinoSwitch(
            activeColor: const Color(0xFF3672E3),
            value: switchvalue,
            onChanged: (value) {
              setState(() {
                switchvalue = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
