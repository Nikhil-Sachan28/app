import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsearch/Controller/mentor_controller.dart';
import 'package:jobsearch/Screens/Mentorship/exploreMentorPage.dart';
import 'package:jobsearch/Screens/Mentorship/mentorDetailPage.dart';

import '../../Components/hashTag.dart';

class MentorshipPage extends StatefulWidget {
  const MentorshipPage({Key? key})
      : super(key: key);

  @override
  State<MentorshipPage> createState() => _MentorshipPageState();
}

class _MentorshipPageState extends State<MentorshipPage> {
  categoryText(String title, String subTitle) {
    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontFamily: "Quicksand",
            fontSize: 23,
            fontWeight: FontWeight.w700,
            color: Color(0xff2d2d2d),
          ),
          textAlign: TextAlign.left,
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          subTitle,
          style: const TextStyle(
            fontFamily: "Quicksand",
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: Color(0xff2d2d2d),
          ),
          textAlign: TextAlign.left,
        ),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }

  mentorCard(String firstName, String lastName) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 2,
      shape: RoundedRectangleBorder(
          side: const BorderSide(
              color: Colors.blue),
          borderRadius:
              BorderRadius.circular(10)),
      child: SizedBox(
        height: Get.height * 0.30,
        width: Get.width * 0.8,
        child: Column(children: [
          Expanded(
              child: Stack(
            children: [
              Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    color: Colors.blue,
                    height: Get.height * 0.1,
                  )),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: 90,
                  height: 90,
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 4,
                      ),
                      boxShadow: [
                        BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 10,
                            color: Colors.black
                                .withOpacity(0.1),
                            offset: const Offset(
                                0, 10))
                      ],
                      shape: BoxShape.circle,
                      image:
                          const DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                "https://images.pexels.com/photos/10057618/pexels-photo-10057618.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                              ))),
                ),
              ),
            ],
          )),
          Expanded(
              child: Column(
            mainAxisAlignment:
                MainAxisAlignment.spaceEvenly,
            children:[
              Align(
                alignment: Alignment.topCenter,
                child: Text(
                  "$firstName $lastName",
                  style: const TextStyle(
                    fontFamily: "Quicksand",
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff2d2d2d),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 13.0),
                  child: Text(
                    "SOFTWARE ENGINEER | SDE | JAVA DEVELOPER | SOFTWARE TRAINER | PYTHON DEVELOPER | ANDROID DEVELOPER | FULLSTACK DEVELOPER",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF2869C4),
                    ),
                    maxLines: 2,
                    overflow:
                        TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          )),
        ]),
      ),
    );
  }

  menteeReviewsCard(void Function() tapAlertBox , String firstName , String lastName) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 2,
      shape: const RoundedRectangleBorder(
        side: BorderSide(color: Colors.blue),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(15),
          topLeft: Radius.circular(15),
        ),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(
            horizontal: 15, vertical: 10),
        height: Get.height * 0.30,
        width: Get.width * 0.8,
        child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start,
            children: [
               ListTile(
                contentPadding: EdgeInsets.zero,
                leading: CircleAvatar(
                    child: Icon(Icons.person)),
                title: Text(
                  "$firstName $lastName",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF000000),
                  ),
                ),
              ),
              const Text(
                "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet.",
                style: TextStyle(
                  letterSpacing: 0.3,
                  fontFamily: "Kanit",
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF000000),
                ),
                textAlign: TextAlign.left,
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
              ),
              TextButton(
                onPressed: tapAlertBox,
                child: const Text(
                  "Read more >",
                  style: TextStyle(
                    letterSpacing: 0.3,
                    fontFamily: "Kanit",
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    // color: Color(0xFF000000),
                  ),
                ),
              ),
            ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var _mentorController = Get.put(MentorController());

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
      body: GetBuilder<MentorController>(
        builder: (mentorController){
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  mainAxisAlignment:
                  MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 7),
                      child: Column(
                          crossAxisAlignment:
                          CrossAxisAlignment
                              .start,
                          children: [
                            categoryText("Top Mentor",
                                "Looking for the best of the best? Here are the top-rated mentors by the learner's community."),
                            SizedBox(
                              height:
                              Get.height * 0.35,
                              child: ListView.builder(
                                itemCount: 10,
                                scrollDirection:
                                Axis.horizontal,
                                itemBuilder: (context,
                                    index) =>
                                    Padding(
                                      padding:
                                      const EdgeInsets
                                          .only(
                                          right: 10),
                                      child: InkWell(
                                        onTap: () {
                                          Get.to(
                                              const MentorDetailPage());
                                        },
                                        child:
                                        mentorCard("mentorController.allMentor[index].firstName","mentorController.allMentor[index].lastName" ),
                                      ),
                                    ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Align(
                              alignment:
                              Alignment.center,
                              child: TextButton(
                                  onPressed: () {
                                    Get.to(
                                        const ExploreMentorPage());
                                  },
                                  style: ButtonStyle(
                                      side: MaterialStateProperty.all(const BorderSide(
                                          width: 2,
                                          color: Colors
                                              .blue)),
                                      shape: const MaterialStatePropertyAll(RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.all(Radius.circular(
                                              20)))),
                                      // foregroundColor:
                                      //     MaterialStateProperty.all(Colors
                                      //         .purple),
                                      padding: MaterialStateProperty.all(
                                          const EdgeInsets.symmetric(
                                              vertical:
                                              1,
                                              horizontal:
                                              15)),
                                      textStyle: MaterialStateProperty.all(
                                          const TextStyle(
                                              fontSize: 15))),
                                  child: const Text(
                                    "Explore All ↓",
                                    textAlign:
                                    TextAlign
                                        .center,
                                  )),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            categoryText(
                                "Mentee Reviews",
                                "Reviews from Our Mentee"),
                            SizedBox(
                              height:
                              Get.height * 0.30,
                              child: ListView.builder(
                                scrollDirection:
                                Axis.horizontal,
                                itemCount: 10,
                                itemBuilder: (context,
                                    index) =>
                                    Padding(
                                      padding:
                                      const EdgeInsets
                                          .only(
                                          right: 10),
                                      child:
                                      menteeReviewsCard(
                                              () {
                                            showDialog(
                                              context:
                                              context,
                                              builder:
                                                  (BuildContext
                                              context) {
                                                return SizedBox(
                                                  width:
                                                  Get.width *
                                                      0.95,
                                                  child:
                                                  AlertDialog(
                                                    shape: const RoundedRectangleBorder(
                                                        borderRadius:
                                                        BorderRadius.all(Radius.circular(10.0))),
                                                    title:
                                                    ListTile(
                                                      contentPadding:
                                                      EdgeInsets.zero,
                                                      trailing:
                                                      IconButton(
                                                        onPressed: () =>
                                                            Get.back(),
                                                        icon:
                                                        const Icon(Icons.cancel_outlined),
                                                      ),
                                                      leading:
                                                      const CircleAvatar(child: Icon(Icons.person)),
                                                      title:
                                                      Text(
                                                        "mentorController.allMenteeReview[index].firstName" + " " + "mentorController.allMenteeReview[index].lastName",
                                                        style:
                                                        TextStyle(
                                                          fontFamily:
                                                          "Poppins",
                                                          fontSize:
                                                          20,
                                                          fontWeight:
                                                          FontWeight.w500,
                                                          color:
                                                          Color(0xFF000000),
                                                        ),
                                                      ),
                                                    ),
                                                    content:
                                                    const Text(
                                                      "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet.",
                                                      style:
                                                      TextStyle(
                                                        letterSpacing:
                                                        0.3,
                                                        fontFamily:
                                                        "Kanit",
                                                        fontSize:
                                                        15,
                                                        fontWeight:
                                                        FontWeight.w500,
                                                        color:
                                                        Color(0xFF000000),
                                                      ),
                                                      textAlign:
                                                      TextAlign.center,
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                      "mentorController.allMenteeReview[index].firstName ",
                                      "mentorController.allMenteeReview[index].lastName"
                                      ),
                                    ),
                              ),
                            ),
                          ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 20.0),
                      child: Column(
                        children: [
                          const Divider(
                            height: 10,
                            thickness: 2,
                          ),
                          const Text(
                            "Mentorship",
                            style: TextStyle(
                                color:
                                Color(0xFF1335A1),
                                fontWeight:
                                FontWeight.w600,
                                fontSize: 20),
                            textAlign:
                            TextAlign.center,
                          ),
                          const Divider(
                            height: 10,
                            thickness: 2,
                          ),
                          SizedBox(
                            width: Get.width * 1,
                            child: ListView.builder(

                              scrollDirection:
                              Axis.vertical,
                              itemCount: 10,
                              physics:
                              const RangeMaintainingScrollPhysics(),
                              shrinkWrap: true,
                              itemBuilder:
                                  (context, index) =>
                                  InkWell(
                                    onTap: () {
                                      Get.to(
                                          const MentorDetailPage());
                                    },
                                    child:
                                    MentorListViewCard(firstName: "mentorController.allMentor[index].firstName", lastName: "mentorController.allMentor[index].lastName",),
                                  ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ]),
            ),
          );
    }
      )
    );
  }
}

class MentorListViewCard extends StatelessWidget {
  String firstName;
  String lastName;

  MentorListViewCard({Key? key, required this.firstName , required this.lastName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      child: SizedBox(
        width: Get.width * 1,
        child:  Wrap(children: [
          ListTile(
            leading: CircleAvatar(
                child: Icon(Icons.person)),
            title: Text(
              "$firstName $lastName",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 17),
            ),
            subtitle: Text(
              "SDE | SOFTWARE ENGEERNING",
              style: TextStyle(fontSize: 12),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            trailing: Text(
              "⭐ 5.0",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            crossAxisAlignment:
                CrossAxisAlignment.center,
            mainAxisAlignment:
                MainAxisAlignment.start,
            children: [HashTag()],
          ),
          SizedBox(
            height: 5,
          ),
        ]),
      ),
    );
  }
}
