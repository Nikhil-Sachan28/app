// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsearch/Configs/Constants.dart';

class AwardPage extends StatelessWidget {
  const AwardPage({Key? key}) : super(key: key);

  _awardSection() {
    return Container(
      width: Get.width * 1,
      color: const Color(0xFFBAD1FF),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(
                left: 10, right: 10, top: 15),
            child: Text(
              Constants.CompanyName,
              style: TextStyle(
                fontFamily: "Avenir Next",
                fontSize: 30,
                height: 1.4,
                fontWeight: FontWeight.w400,
                color: Color(0xFF000000),
              ),
              textAlign: TextAlign.start,
            ),
          ),
          const Text(
            "AWARDS",
            style: TextStyle(
                fontFamily: "Avenir Next",
                fontSize: 35,
                fontWeight: FontWeight.w600,
                color: Color(0xFF000000),
                height: 1.1),
            textAlign: TextAlign.start,
          ),
          SizedBox(
            width: 100,
            child: Row(children: <Widget>[
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(
                      right: 5),
                  child: const Divider(
                    height: 25,
                    thickness: 2,
                    color: Color(0xFF000000),
                  ),
                ),
              ),
              const Text(
                "2023",
                style: TextStyle(
                  fontFamily: "Avenir Next",
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF000000),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(
                    left: 5.0,
                  ),
                  child: const Divider(
                    height: 25,
                    thickness: 2,
                    color: Color(0xFF000000),
                  ),
                ),
              ),
            ]),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 15),
            child: Text(
              "With great pride, we release the final ranking for all categories! The nominations, votes, and survey responses",
              style: TextStyle(
                fontFamily: "Inter",
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Color(0xff000000),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          _awardsListView(),
        ],
      ),
    );
  }

  _awardsListView() {
    return UnconstrainedBox(
      alignment: Alignment.center,
      child: SizedBox(
        width: Get.width * 1,
        child: GridView.builder(
          physics: const RangeMaintainingScrollPhysics(),
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(
              horizontal: 20, vertical: 5),
          gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
          itemCount: 8,
          itemBuilder: (context, index) =>
              Container(
            margin: const EdgeInsets.only(
                right: 15, left: 15),
            child: award(
                "Unstoppable Leaders ${2023 - index}"),
          ),
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context)
            .scaffoldBackgroundColor,
        elevation: 0,
        centerTitle: false,
        title: const Text(
          "Awards 2023",
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
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.center,
            children: [
              _awardSection(),
            ]),
      ),
    );
  }

  Widget decorativeContainer(String image,
      String number, String category) {
    return Container(
      padding: const EdgeInsets.only(
          top: 4, left: 5, right: 5),
      decoration: BoxDecoration(
          color: const Color(0xFFD1DADF),
          borderRadius:
              BorderRadius.circular(10)),
      width: Get.width * 0.43,
      height: Get.height * 0.26,
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.center,
        mainAxisAlignment:
            MainAxisAlignment.center,
        children: [
          Text(
            "$number +",
            style: const TextStyle(
              fontFamily: "Kanit",
              fontSize: 17,
              fontWeight: FontWeight.w600,
              color: Color(0xff1d1d23),
              height: 25 / 17,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            category,
            style: const TextStyle(
              fontFamily: "Kanit",
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color(0xff1d1d23),
            ),
            textAlign: TextAlign.center,
          ),
          Image(
              fit: BoxFit.contain,
              image: AssetImage(image))
        ],
      ),
    );
  }

  Widget award(String awardLabel) {
    return Stack(
      alignment: Alignment.center,
      children: [
        const Image(
            image:
                AssetImage("assets/award.png")),
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 10.0),
            child: Text(
              awardLabel.replaceAll(" ", "\n"),
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            ),
          ),
        )
      ],
    );
  }
}
