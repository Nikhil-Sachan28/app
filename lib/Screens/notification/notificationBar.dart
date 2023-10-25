import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsearch/Screens/notification/widget/notificationSmall.dart';

import 'widget/notificationLarge.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key})
      : super(key: key);

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
              NotificationSmall(
                  title: "Bert Pullman",
                  timeupdated: "Just now"),
              NotificationSmall(
                  title:
                      "Your course has been updated, you can see",
                  timeupdated: "Just now"),
              const SizedBox(
                height: 25,
              ),
              NotificationLarge(
                  isRead: false,
                  title: "Bert Pullman",
                  content:
                      "Applications for Google inc have entered for company review",
                  buttonText:
                      "Application details"),
              NotificationLarge(
                  isRead: true,
                  title: "Bert ",
                  content:
                      "Check out 5 jobs similar to the one you saw recently : UI/UX Designer on Facebook",
                  buttonText: "See job"),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
