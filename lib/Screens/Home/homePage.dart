import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsearch/Accounts/Profile/profile_page.dart';
import 'package:jobsearch/Components/homeScreenSlider.dart';
import 'package:jobsearch/Components/progressTracker.dart';
import 'package:jobsearch/Practice/PracticeMainPage.dart';
import 'package:jobsearch/Screens/Compete/compete_main_page.dart';
import 'package:jobsearch/Screens/Home/Component/LargeBanner.dart';
import 'package:jobsearch/Screens/Jobs/JobsMainPage.dart';
import 'package:jobsearch/Screens/Mentorship/mentorship.dart';
import 'package:jobsearch/Screens/notification/notificationPage.dart';
import 'package:jobsearch/Screens/Course/studyPage.dart';
import 'package:jobsearch/Stationary/stationaryHomePage.dart';
import '../../Components/categoryComponent.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() =>
      _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: Get.height * .30,
            child: Stack(children: [
              Container(
                height: Get.height * 0.23,
                decoration: const BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius:
                        BorderRadius.only(
                            bottomRight:
                                Radius.circular(
                                    15),
                            bottomLeft:
                                Radius.circular(
                                    15))),
                // child: Align(
                //   alignment: Alignment.center,
                //   child: SearchBar(
                //       hintText: "Find Institute"),
                // ),
              ),
              // Align(
              //   alignment: Alignment.centerRight,
              //   child: Container(
              //       height: Get.height * 0.10,
              //       margin:
              //           EdgeInsets.only(right: 20),
              //       child: Image.asset(
              //           'assets/person.png')),
              // ),
              ProgressTracker(
                  align: Alignment.bottomCenter),
              SafeArea(
                child: Align(
                  alignment: Alignment.topRight,
                  child: Row(
                    mainAxisAlignment:
                        MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () => Get.to(
                            const NotificationPage()),
                        child: const Padding(
                          padding:
                              EdgeInsets.only(
                                  right: 15.0),
                          child: Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () =>
                            Get.to(ProfilePage()),
                        child: const Padding(
                          padding:
                              EdgeInsets.only(
                                  right: 15.0),
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ),
          Container(
            margin: const EdgeInsets.only(
                top: 20, bottom: 20),
            width: Get.width * 1,
            child: Wrap(
              alignment: WrapAlignment.center,
              spacing: 10,
              runSpacing: 10,
              children: [
                CategoryComponent(
                  alignment: Alignment.topCenter,
                  containerHeight: 0.20,
                  fontsize: 13,
                  containerWidth: 0.3,
                  categoryText: "Learn",
                  redirectPage: () => Get.to(
                      () => StudyPage()),
                ),
                CategoryComponent(
                  containerHeight: 0.2,
                  alignment: Alignment.topCenter,
                  containerWidth: 0.3,
                  fontsize: 13,
                  categoryText: "Practice",
                  redirectPage: () => Get.to(() =>
                      const PracticeMainPage()),
                ),
                CategoryComponent(
                  containerHeight: 0.2,
                  alignment: Alignment.topCenter,
                  fontsize: 13,
                  containerWidth: 0.3,
                  categoryText: "Mentorships",
                  redirectPage: () => Get.to(() =>
                      const MentorshipPage()),
                ),
                CategoryComponent(
                  containerHeight: 0.2,
                  alignment: Alignment.topCenter,
                  fontsize: 13,
                  containerWidth: 0.3,
                  categoryText: "compete",
                  redirectPage: () => Get.to(() =>
                      const CompeteMainPage()),
                ),
                CategoryComponent(
                  containerHeight: 0.2,
                  alignment: Alignment.topCenter,
                  fontsize: 13,
                  containerWidth: 0.3,
                  categoryText: "Jobs",
                  redirectPage: () {
                    Get.to(() =>
                        const JobsMainPage());
                  },
                ),
                CategoryComponent(
                  containerHeight: 0.2,
                  alignment: Alignment.topCenter,
                  fontsize: 12,
                  containerWidth: 0.3,
                  categoryText:
                      "Stationary Store",
                  redirectPage: () => Get.to(() =>
                      const StationaryHomePage()),
                ),
              ],
            ),
          ),
          HomeScreenSlider(),
          LargeBanner(),
        ]),
      ),
    );
  }
}
