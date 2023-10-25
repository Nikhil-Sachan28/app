import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsearch/Accounts/Menu/awardPage.dart';
import 'package:jobsearch/Accounts/Menu/Careers/careers.dart';
import 'package:jobsearch/Accounts/Menu/CaseStudies/caseStudiesPage.dart';
import 'package:jobsearch/Accounts/Menu/faqPage.dart';
import 'package:jobsearch/Accounts/Menu/forEmployers.dart';
import 'package:jobsearch/Accounts/Menu/menuContactUs.dart';
import 'package:jobsearch/Accounts/Menu/ourClientele.dart';
import 'package:jobsearch/Accounts/Menu/partners.dart';
import 'package:jobsearch/Accounts/Menu/privacyPolicyPage.dart';
import 'package:jobsearch/Accounts/Menu/termConditionPage.dart';
import 'package:jobsearch/Accounts/Menu/testimonials.dart';
import 'package:jobsearch/Accounts/aboutus_Page.dart';
import 'package:jobsearch/Accounts/help_page.dart';
import 'package:jobsearch/Components/accountCells.dart';
import 'package:jobsearch/Configs/Constants.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context)
            .scaffoldBackgroundColor,
        elevation: 1,
        centerTitle: true,
        title: const Text(
          "Menu",
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
            
            children: [
          AccountCells(
              isIcon: Icons.card_giftcard_outlined,
              text: "For Employers",
              onTap: const ForEmployers()),
          AccountCells(
              isIcon: Icons.call,
              text: "Contact Us",
              onTap: const MenuContactUs()),
          AccountCells(
              isIcon: Icons.leaderboard,
              text: "Clientele",
              onTap: const OurClientele()),
          AccountCells(
              isIcon: Icons.event_note,
              text: "Client Case Studies",
              onTap: const CaseStudies()),
          AccountCells(
              isIcon: Icons.star_border_purple500_outlined,
              text: "Testimonials",
              onTap: const TestimonialPage()),
          AccountCells(
              isIcon: Icons.web_outlined,
              text: "About Us",
              onTap: const AboutUs()),
          AccountCells(
              isIcon: Icons.accessibility_outlined,
              text:
                  "${Constants.CompanyName} Award 2023",
              onTap: const AwardPage()),
          AccountCells(
              isIcon: Icons.people_outline,
              text:
                  "Partners",
              onTap: const PartnersPage()),
          AccountCells(
              isIcon: Icons.auto_graph_outlined,
              text:
                  "Careers",
              onTap: const CareersPage()),
          AccountCells(
              isIcon: Icons.sticky_note_2_outlined,
              text:
                  "FAQs",
              onTap: const FaqPage()),
          AccountCells(
              isIcon: Icons.sticky_note_2_outlined,
              text:
                  "Terms & Conditions",
              onTap: TermConditionPage()),
          AccountCells(
              isIcon: Icons.shield_outlined,
              text:
                  "Privacy Policy",
              onTap: PrivacyPolicyPage()),
        ]),
      ),
    );
  }
}
