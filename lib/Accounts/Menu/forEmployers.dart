import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsearch/Accounts/Menu/requestDemo.dart';
import 'package:jobsearch/Configs/Constants.dart';

class ForEmployers extends StatelessWidget {
  const ForEmployers({Key? key})
      : super(key: key);

  _demoRequest() {
    return Container(
      width: Get.width * 1,
      color: const Color(0xFFBAD1FF),
      padding: const EdgeInsets.only(
          left: 10, right: 10, top: 15),
      child: Column(
        children: [
          const Text(
            "Need",
            style: TextStyle(
              fontFamily: "Avenir Next",
              fontSize: 30,
              height: 1.4,
              fontWeight: FontWeight.w400,
              color: Color(0xFF000000),
            ),
            textAlign: TextAlign.center,
          ),
          const Text(
            "Freshers ! , Graduate ! , Engineering Students ! ",
            style: TextStyle(
                fontFamily: "Avenir Next",
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Color(0xFF1B2193),
                height: 1.3),
            textAlign: TextAlign.center,
          ),
          const Text(
            "Your're at the right place",
            style: TextStyle(
                fontFamily: "Avenir Next",
                fontSize: 35,
                fontWeight: FontWeight.w400,
                color: Color(0xFF000000),
                height: 1.1),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            width: 100,
            child: Divider(
              height: 25,
              thickness: 2,
              color: Color(0xFF000000),
            ),
          ),
          const Text(
            "${Constants.CompanyName} is a hiring platform that enables companies to engage with talent across the globe while branding, sourcing, assessing, and hiring the right talent.",
            style: TextStyle(
              fontFamily: "Inter",
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: Color(0xff1c4980),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10,
          ),
          TextButton(
              style: ButtonStyle(
                  shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius
                                  .circular(10))),
                  backgroundColor:
                      const MaterialStatePropertyAll(
                          Color(0xFF000000))),
              onPressed: () {
                Get.to(const RequestDemo());
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 2),
                child: Text(
                  "Request a demo",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffffffff),
                  ),
                  textAlign: TextAlign.left,
                ),
              )),
          const Image(
              alignment: Alignment.bottomCenter,
              image: AssetImage(
                  "assets/student.png"))
        ],
      ),
    );
  }

  _audience() {
    return SizedBox(
      width: Get.width * 1,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              "We connect you with the audience you need",
              style: TextStyle(
                  fontFamily: "Avenir Next",
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF000000),
                  height: 1.1),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            width: 100,
            child: Divider(
              height: 25,
              thickness: 2.5,
              color: Color(0xFF000000),
            ),
          ),
          Wrap(
            spacing: 15,
            runSpacing: 15,
            alignment: WrapAlignment.spaceBetween,
            children: [
              decorativeContainer(
                  "assets/student.png",
                  '3000',
                  "Students"),
              decorativeContainer(
                  "assets/student.png",
                  '27',
                  "Countries"),
              decorativeContainer(
                  "assets/student.png",
                  '11',
                  "Brand trust us"),
              decorativeContainer(
                  "assets/student.png",
                  '1400',
                  "Colleges and Companies"),
            ],
          )
        ],
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
          "For Employers",
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
              _demoRequest(),
              const SizedBox(
                height: 25,
              ),
              _audience()
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
}
