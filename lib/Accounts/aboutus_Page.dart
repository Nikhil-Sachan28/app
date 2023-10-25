import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Configs/Constants.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  aboutus() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.symmetric(
            vertical: 15, horizontal: 10),
        decoration: const BoxDecoration(
          color: Color(0xFFBAD1FF),
        ),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: const EdgeInsets.only(
                    top: 10, bottom: 10),
                height: Get.height * 0.35,
                width: Get.width * 1,
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(
                            15)),
                child: ClipRRect(
                  borderRadius:
                      const BorderRadius.all(
                          Radius.circular(10)),
                  child: CachedNetworkImage(
                    placeholder: (context,
                            item) =>
                        const Icon(Icons.image),
                    imageUrl:
                        'https://images.pexels.com/photos/1742370/pexels-photo-1742370.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
              ),
            ),
            const Text(
              Constants.CompanyName,
              style: TextStyle(
                  fontFamily: "Avenir Next",
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff35393c),
                  height: 1.5),
              textAlign: TextAlign.center,
            ),
            const Text(
              "Your brand story. Tell shoppers the origin story of your business and why you started it. For the most impact, make it memorable and personal, so customers relate and connect with your brandWho you serve. What do you offer and who is it for? Help shoppers see the value of your product or service by sharing how it solves problems or needs, How you operate. If you offer a service, explain your business model or how your products are made. If you have a unique way of doing things, show it. This builds credibility with shoppers and helps you stand out against competitorsThe face of your business. Feature photos of the founders or key people on your team. Customers like to see who they are buying from or working with Persuasive content. Consider what step you’d like readers to take next. Use additional content and calls to action to move them forward towards that goal. This could include buttons, testimonials, an explainer video, data visualizations, links to blog posts, products, your social media accounts or newsletter.",
              style: TextStyle(
                  fontFamily: "Avenir Next",
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff35393c),
                  height: 1.5),
              textAlign: TextAlign.left,
            ),
          ],
        ),
      ),
    );
  }

  journey() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.symmetric(
            vertical: 10, horizontal: 10),
        decoration: const BoxDecoration(
          color: Color(0xFFBAD1FF),
        ),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,
          children: const [
            Text(
              "Journey So Far!",
              style: TextStyle(
                  fontFamily: "Avenir Next",
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff35393c),
                  height: 1.5),
              textAlign: TextAlign.center,
            ),
            Text(
              "Your brand story. Tell shoppers the origin story of your business and why you started it. For the most impact, make it memorable and personal, so customers relate and connect with your brandWho you serve. What do you offer and who is it for? Help shoppers see the value of your product or service by sharing how it solves problems or needs, How you operate. If you offer a service, explain your business model or how your products are made. If you have a unique way of doing things, show it. This builds credibility with shoppers and helps you stand out against competitorsThe face of your business. Feature photos of the founders or key people on your team. Customers like to see who they are buying from or working with Persuasive content. Consider what step you’d like readers to take next. Use additional content and calls to action to move them forward towards that goal. This could include buttons, testimonials, an explainer video, data visualizations, links to blog posts, products, your social media accounts or newsletter.",
              style: TextStyle(
                  fontFamily: "Avenir Next",
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff35393c),
                  height: 1.5),
              textAlign: TextAlign.left,
            ),
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
          "About Us",
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
        child: Container(
            margin: const EdgeInsets.symmetric(
                vertical: 10),
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                      top: 10.0, bottom: 5),
                  child: Text(
                    "Where Talent Meets Opportunities",
                    style: TextStyle(
                      fontFamily: "Avenir Next",
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff35393c),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const Padding(
                  padding:
                      EdgeInsets.only(bottom: 10),
                  child: Text(
                    "Platform  built to help talent",
                    style: TextStyle(
                      fontFamily: "Avenir Next",
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff35393c),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                aboutus(),
                const SizedBox(
                  height: 30,
                ),
                journey(),
              ],
            )),
      ),
    );
  }
}
