import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsearch/Controller/mentor_controller.dart';
import 'package:jobsearch/Screens/Mentorship/mentorship.dart';

import 'mentorDetailPage.dart';

class ExploreMentorPage extends StatelessWidget {
  const ExploreMentorPage({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context)
            .scaffoldBackgroundColor,
        elevation: 1,
        centerTitle: true,
        title: const Text(
          "Mentorship",
          style: TextStyle(
              color: Colors.black,
              fontSize: 17,
              fontWeight: FontWeight.w500),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 20,
          ),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: GetBuilder <MentorController> (
        builder: (menteeController){
          return SizedBox(
            width: Get.width * 1,
            child: ListView.builder(
              padding:
              const EdgeInsets.only(bottom: 10),
              scrollDirection: Axis.vertical,
              itemCount: 15,
              shrinkWrap: true,
              itemBuilder: (context, index) =>
                  InkWell(
                    onTap: () {
                      Get.to(const MentorDetailPage());
                    },
                    child: MentorListViewCard(firstName: "menteeController.allMentor[index].firstName" , lastName: "menteeController.allMentor[index].lastName"),
                  ),
            ),
          );
        },
      )
    );
  }
}
