import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PrivacyPolicyPage extends StatelessWidget {
  PrivacyPolicyPage({super.key});

  String term =
      ('A Privacy Policy agreement outlines the rules, expectations, and guidelines you expect people to follow when accessing your website or mobile app and informs A terms and conditions agreement outlines the rules, expectations, and guidelines you expect people to follow when accessing your website or mobile app and informs them about what they can expect from you.Whether you call it a terms of use, terms of service, or terms and conditions, this powerhouse document helps maintain control over your site as long as your guidelines fall within applicable laws.Here are a few examples of what you can include in yours:');

  _topSection() {
    return Container(
      width: Get.width * 1,
      // color: const Color(0xFFE4E8F1),
      padding: const EdgeInsets.only(
          left: 10, right: 10, top: 15),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.center,
        children: const [
          SizedBox(
            height: 15,
          ),
          Text(
            "Privacy Policy",
            style: TextStyle(
                fontFamily: "Avenir Next",
                fontSize: 35,
                fontWeight: FontWeight.w700,
                color: Color(0xFF000000),
                height: 1.1),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            width: 100,
            child: Divider(
              height: 25,
              thickness: 2,
              color: Color(0xFF000000),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Every human or organisation has three levels of openness: Public, Personal adn Private. We do believe in you right to privacy",
            style: TextStyle(
              fontFamily: "Inter",
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Color(0xff000000),
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          Image(
              alignment: Alignment.bottomCenter,
              image:
                  AssetImage("assets/term.png")),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  _termContent() {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 20.0),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [
          const Text(
            "Terms of Use",
            style: TextStyle(
                fontFamily: "Avenir Next",
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color(0xFF000000),
                height: 1.1),
            textAlign: TextAlign.start,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            term,
            style: const TextStyle(
              fontFamily: "Inter",
              fontSize: 17,
              fontWeight: FontWeight.w500,
              color: Color(0xff000000),
            ),
            textAlign: TextAlign.start,
          ),
          const SizedBox(
            height: 25,
          ),
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
        elevation: 1,
        centerTitle: false,
        title: const Text(
          "Client Testimonials",
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
                CrossAxisAlignment.start,
            children: [
              _topSection(),
              _termContent()
            ]),
      ),
    );
  }
}
