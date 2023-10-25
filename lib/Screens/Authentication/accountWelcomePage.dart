import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsearch/Screens/Authentication/loginPage.dart';
import 'package:jobsearch/Screens/Authentication/signUpPage.dart';

import '../bottomNavigationBar.dart';

class AccountWelcomePage extends StatefulWidget {
  const AccountWelcomePage({Key? key})
      : super(key: key);

  @override
  _AccountWelcomePageState createState() =>
      _AccountWelcomePageState();
}

Widget _skipButton() {
  return InkWell(
    onTap: () {
      Get.to(const BottomNavigationBarScreen());
    },
    child: Container(
      padding: const EdgeInsets.symmetric(
          horizontal: 10),
      child: Row(
        children: <Widget>[
          const Text('Skip',
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500)),
          Container(
            padding: const EdgeInsets.only(
                left: 0, top: 10, bottom: 10),
            child: const Icon(
                Icons
                    .keyboard_arrow_right_outlined,
                color: Colors.black),
          ),
        ],
      ),
    ),
  );
}

class _AccountWelcomePageState
    extends State<AccountWelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xfff7f6fb),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: 24, horizontal: 32),
          child: Column(
            children: [
              Align(
                  alignment: Alignment.topRight,
                  child: _skipButton()),
              Image.asset(
                'assets/illustration-3.png',
                width: 240,
              ),
              const SizedBox(
                height: 18,
              ),
              const Text(
                "Let's get started",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Never a better time than now to start.",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 38,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(const SignUpPage());
                  },
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<
                            Color>(Colors.white),
                    backgroundColor:
                        MaterialStateProperty.all<
                            Color>(Colors.purple),
                    shape:
                        MaterialStateProperty.all<
                            RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(
                                24.0),
                      ),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(14.0),
                    child: Text(
                      'Create Account',
                      style:
                          TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(LoginPage());
                  },
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<
                            Color>(Colors.purple),
                    backgroundColor:
                        MaterialStateProperty.all<
                            Color>(Colors.white),
                    shape:
                        MaterialStateProperty.all<
                            RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(
                                24.0),
                      ),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(14.0),
                    child: Text(
                      'Login',
                      style:
                          TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
