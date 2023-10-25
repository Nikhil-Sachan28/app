import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsearch/Screens/Compete/completelist_page.dart';
import '../../Components/SearchBar.dart' as searchbar;
import '../../Components/categoryComponent.dart';
class CompeteMainPage extends StatelessWidget {
  const CompeteMainPage({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: InkWell(
        //   onTap: () => Get.back(),
        //   child: Icon(Icons.arrow_back),
        // ),
        title: searchbar.SearchBar(
            hintText: "Find Competitions & more"),
        backgroundColor: const Color(0xFF3D5CFF),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
              left: 15.0, right: 15),
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.center,
            mainAxisAlignment:
                MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              gridCategory(),
              const SizedBox(
                height: 40,
              ),
              opportunites(),
              const SizedBox(
                height: 40,
              ),
              exploreOpportunities()
            ],
          ),
        ),
      ),
    );
  }

  Widget exploreOpportunities() {
    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(
              top: 20, bottom: 5, left: 10),
          child: const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "More Exciting Opportunites",
              style: TextStyle(
                fontFamily: "Quicksand",
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Color(0xff29367c),
                // height: 21 / 14,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
              bottom: 20, left: 10),
          child: const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Participate , Showcase Skills & Gain CV Points through online & offline opportunities of your intrest & make your mark !",
              style: TextStyle(
                fontFamily: "Quicksand",
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Color(0xFF42536F),
                // height: 21 / 14,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ),
        Row(
          mainAxisAlignment:
              MainAxisAlignment.center,
          children: [
            CategoryComponent(
              containerHeight: 0.17,
              alignment: Alignment.topLeft,
              isPadding: true,
              fontsize: 13,
              containerWidth: 0.43,
              categoryText:
                  "open to\nCollege \nStudents",
              redirectPage: () {},
            ),
            const SizedBox(
              width: 15,
            ),
            CategoryComponent(
              containerHeight: 0.17,
              alignment: Alignment.topLeft,
              isPadding: true,
              fontsize: 13,
              containerWidth: 0.43,
              categoryText:
                  "open to\nWorking \nProfessionals",
              // isPadding: true,
              redirectPage: () {},
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment:
              MainAxisAlignment.center,
          children: [
            CategoryComponent(
              containerHeight: 0.17,
              containerWidth: 0.43,
              alignment: Alignment.topLeft,
              isPadding: true,
              fontsize: 13,
              categoryText:
                  "with to\nTeam \n Participation",
              redirectPage: () {},
            ),
            const SizedBox(
              width: 15,
            ),
            CategoryComponent(
              containerHeight: 0.17,
              containerWidth: 0.43,
              alignment: Alignment.topLeft,
              isPadding: true,
              fontsize: 13,
              categoryText:
                  "with to\n Individual \n Participation",
              redirectPage: () {},
            ),
          ],
        ),
      ],
    );
  }

  Widget opportunites() {
    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(
              top: 25, bottom: 20, left: 10),
          child: const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "More Exciting Opportunites",
              style: TextStyle(
                fontFamily: "Quicksand",
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Color(0xff29367c),
                // height: 21 / 14,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ),
        Row(
          mainAxisAlignment:
              MainAxisAlignment.center,
          children: [
            CategoryComponent(
              containerHeight: 0.17,
              alignment: Alignment.topLeft,
              isPadding: true,
              fontsize: 13,
              containerWidth: 0.43,
              categoryText: "Conferences",
              redirectPage: () {},
            ),
            const SizedBox(
              width: 15,
            ),
            CategoryComponent(
              containerHeight: 0.17,
              alignment: Alignment.topLeft,
              isPadding: true,
              fontsize: 13,
              containerWidth: 0.43,
              categoryText: "College festivals",
              // isPadding: true,
              redirectPage: () {},
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment:
              MainAxisAlignment.center,
          children: [
            CategoryComponent(
              containerHeight: 0.17,
              containerWidth: 0.43,
              alignment: Alignment.topLeft,
              isPadding: true,
              fontsize: 13,
              categoryText: "Cultural events",
              redirectPage: () {},
            ),
            const SizedBox(
              width: 15,
            ),
            CategoryComponent(
              containerHeight: 0.17,
              containerWidth: 0.43,
              alignment: Alignment.topLeft,
              isPadding: true,
              fontsize: 13,
              categoryText: "Scholarships",
              redirectPage: () {},
            ),
          ],
        ),
      ],
    );
  }

  Widget gridCategory() {
    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(
              left: 10, bottom: 10),
          child: const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Choose Option ",
              style: TextStyle(
                fontFamily: "Quicksand",
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Color(0xff29367c),
                // height: 21 / 14,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ),
        Row(
          mainAxisAlignment:
              MainAxisAlignment.center,
          children: [
            CategoryComponent(
              containerHeight: 0.17,
              alignment: Alignment.topLeft,
              isPadding: true,
              fontsize: 13,
              containerWidth: 0.43,
              categoryText: "Competitions",
              redirectPage: () {
                Get.to(() => CompeteListPage(
                      categoryName:
                          "Competitions",
                    ));
              },
            ),
            const SizedBox(
              width: 15,
            ),
            CategoryComponent(
              containerHeight: 0.17,
              alignment: Alignment.topLeft,
              isPadding: true,
              fontsize: 13,
              containerWidth: 0.43,
              categoryText: "Hackathons",
              // isPadding: true,
              redirectPage: () {
                Get.to(() => CompeteListPage(
                      categoryName: "Hackathons",
                    ));
              },
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment:
              MainAxisAlignment.center,
          children: [
            CategoryComponent(
              containerHeight: 0.17,
              containerWidth: 0.43,
              alignment: Alignment.topLeft,
              isPadding: true,
              fontsize: 13,
              categoryText: "Quizzes",
              redirectPage: () {
                Get.to(() => CompeteListPage(
                      categoryName: "Quizzes",
                    ));
              },
            ),
            const SizedBox(
              width: 15,
            ),
            CategoryComponent(
              containerHeight: 0.17,
              containerWidth: 0.43,
              alignment: Alignment.topLeft,
              isPadding: true,
              fontsize: 13,
              categoryText: "Hiring Challanges",
              redirectPage: () {
                Get.to(() => CompeteListPage(
                      categoryName: "Challanges",
                    ));
              },
            ),
          ],
        ),
      ],
    );
  }
}
