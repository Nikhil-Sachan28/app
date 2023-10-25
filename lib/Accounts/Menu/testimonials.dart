import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsearch/Configs/Constants.dart';

class TestimonialPage extends StatelessWidget {
  const TestimonialPage({super.key});

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
            "what our Clients said!",
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
            "Why ${Constants.CompanyName}? Let's find out!",
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
                  AssetImage("assets/star.png")),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  _testimonial() {
    return Card(
      elevation: 0,
      margin: const EdgeInsets.symmetric(
          horizontal: 10),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: const [
            Center(
                child: CircleAvatar(
              backgroundColor: Color(0xFF365BEF),
              radius: 65,
              child: CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage(
                  "https://images.pexels.com/photos/3307758/pexels-photo-3307758.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=250",
                ),
              ),
            )),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: 15),
              child: Text(
                "${Constants.CompanyName} is a hiring platform that enables companies to engage with talent across the globe while branding, sourcing, assessing, and hiring the right talent.talent across the globe while branding, sourcing, assessing, and hiring the right talent.",
                style: TextStyle(
                  fontFamily: "Inter",
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff1c4980),
                ),
                textAlign: TextAlign.start,
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              horizontalTitleGap: 0,
              leading: VerticalDivider(
                width: 5,
                thickness: 4,
                color: Color(0xff1c4980),
              ),
              title: Text(
                "Nisha Goyal",
                style: TextStyle(
                  fontFamily: "Inter",
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff1c4980),
                ),
                textAlign: TextAlign.start,
              ),
              subtitle: Text(
                "Lead Marketing Manager , IBM",
                style: TextStyle(
                  fontFamily: "Inter",
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff1c4980),
                ),
                textAlign: TextAlign.start,
              ),
            ),
            Divider(
              height: 5,
              thickness: 1,
            )
          ],
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
        child: Column(children: [
          _topSection(),
          ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: 4,
            itemBuilder: (context, index) =>
                _testimonial(),
          )
        ]),
      ),
    );
  }
}
