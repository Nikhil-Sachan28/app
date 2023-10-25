import 'package:flutter/material.dart';
import 'package:jobsearch/Screens/Institutes/institutesMainPage.dart';
import 'package:jobsearch/Screens/Jobs/JobsMainPage.dart';
import 'package:jobsearch/Screens/accountPage.dart';
import 'package:jobsearch/Screens/cartPage.dart';
import 'package:jobsearch/Screens/Home/homePage.dart';
import 'package:jobsearch/Screens/Course/studyPage.dart';
import 'package:get/get.dart';

class BottomNavigationBarScreen
    extends StatefulWidget {
  const BottomNavigationBarScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomNavigationBarScreen>
      createState() =>
          _BottomNavigationBarScreenState();
}

List<Widget> bottomViewList = [
  const HomePage(),
  const InstituteMainPage(),
  const CartPage(),
  StudyPage(),
  const JobsMainPage(),
  const AccountPage(),
];
var bottomindex = 0;

class _BottomNavigationBarScreenState
    extends State<BottomNavigationBarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        width: Get.width * 1,
        color: Colors.white,
        child: BottomNavigationBar(
          onTap: (var value) => setState(() {
            bottomindex = value;
          }),
          currentIndex: bottomindex,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                label: "Home",
                icon: Icon(Icons.home_outlined)),
            BottomNavigationBarItem(
                label: "Institute",
                icon: Icon(
                    Icons.category_outlined)),
            BottomNavigationBarItem(
                label: "Cart",

                icon: Icon(Icons.shopping_cart_outlined),
            ),
            BottomNavigationBarItem(
                label: "Study",
                icon: Icon(Icons.book_outlined)),
            BottomNavigationBarItem(
                label: "Jobs",
                icon: Icon(Icons.cases_outlined)),
            BottomNavigationBarItem(
                label: "Account",
                icon: Icon(
                    Icons.settings_outlined)),
          ],
          backgroundColor: Colors.white,
          elevation: 5,
        ),
      ),
      body: bottomViewList[bottomindex],
    );
  }
}
