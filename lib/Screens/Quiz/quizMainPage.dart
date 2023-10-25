import 'package:flutter/material.dart';

import '../../DefaultPage/testPage.dart';

class QuizMainPage extends StatelessWidget {
  const QuizMainPage({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TestPage(
      pageTitle: "Quiz",
      buttonName: 'Attempt',
      onTapCommand: () {},
    );
  }
}
