import 'package:flutter/material.dart';

import 'package:jobsearch/DefaultPage/testPage.dart';

class Courses extends StatelessWidget {
  const Courses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TestPage(
      pageTitle: "Courses",
      buttonName: "View Details",
      onTapCommand: () {},);
  }
}
