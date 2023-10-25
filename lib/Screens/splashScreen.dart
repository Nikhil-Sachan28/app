import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsearch/Screens/Authentication/accountWelcomePage.dart';

import '../Configs/Constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key})
      : super(key: key);

  @override
  State<SplashScreen> createState() =>
      _SplashScreenState();
}

class _SplashScreenState
    extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    startTime();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _centerWidget(),
    );
  }

  startTime() async {
    var duration = const Duration(seconds: 2);
    return Timer(
      duration,
      () => Get.to(
        const AccountWelcomePage(),
      ),
    );
  }

  Widget _centerWidget() {
    return Center(
      child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center,
          crossAxisAlignment:
              CrossAxisAlignment.center,
          children: const [
            Text(
              Constants.CompanyName,
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF5257C1)),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
                child: CircularProgressIndicator(
              backgroundColor: Color(0xFF434ECE),
            ))
          ]),
    );
  }
}
