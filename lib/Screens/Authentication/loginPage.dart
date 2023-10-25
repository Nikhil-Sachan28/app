import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:jobsearch/Controller/account_controller.dart';
import 'package:jobsearch/Screens/Authentication/PhoneNoAuth/numberScreen.dart';
import 'package:jobsearch/Screens/Authentication/forgotPassword.dart';
import 'package:jobsearch/Screens/Authentication/signUpPage.dart';
import 'package:jobsearch/Screens/bottomNavigationBar.dart';
import 'package:jobsearch/utils/extension.dart';

import '../../Configs/Constants.dart';
import '../../utils/customeFormField.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, this.title})
      : super(key: key);

  final String? title;

  @override
  _LoginPageState createState() =>
      _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Widget _backButton() {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
            horizontal: 10),
        child: Row(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(
                  left: 0, top: 10, bottom: 10),
              child: const Icon(
                  Icons.keyboard_arrow_left,
                  color: Colors.black),
            ),
            const Text('Back',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500))
          ],
        ),
      ),
    );
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

  Widget _entryField(String title,
      {bool isPassword = false}) {
    return Container(
      margin: const EdgeInsets.symmetric(
          vertical: 10),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15),
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
              obscureText: isPassword,
              decoration: const InputDecoration(
                  border: InputBorder.none,
                  fillColor: Color(0xfff3f3f4),
                  filled: true))
        ],
      ),
    );
  }

  Widget  _submitButton() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding:
            const EdgeInsets.symmetric(vertical: 5),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
                Radius.circular(5)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.grey.shade200,
                  offset: const Offset(2, 4),
                  blurRadius: 5,
                  spreadRadius: 2)
            ],
            gradient: const LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color(0xFF3575E3),
                  Color(0xFF2B3AE0)
                ])),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: const Text(
            'Login',
            style: TextStyle(
                fontSize: 17, color: Colors.white),
          ),
        ),
      ),
    );
  }

  Widget _createAccountLabel() {
    return InkWell(
      onTap: () {
        Get.to(const SignUpPage());
      },
      child: Container(
        margin: const EdgeInsets.symmetric(
            vertical: 20),
        padding: const EdgeInsets.all(15),
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment:
              MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'Don\'t have an account ?',
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Register',
              style: TextStyle(
                  color: Color(0xfff79c4f),
                  fontSize: 13,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }

  Widget _title() {
    return const Text(
      Constants.CompanyName,
      style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w700,
          color: Color(0xFF5257C1)),
    );
  }

  Widget _emailPasswordWidget() {
    return Column(
      children: <Widget>[
        _entryField("Email id"),
        _entryField("Password", isPassword: true),
      ],
    );
  }

  final _formKey = GlobalKey<FormState>();
  AccountController accountController = Get.put(AccountController());

  @override
  Widget build(BuildContext context) {
    final height =
        MediaQuery.of(context).size.height;
    return Scaffold(
        body: SizedBox(
      height: height,
      child: Stack(
        children: <Widget>[
          Positioned(
              top: -height * .15,
              right: -MediaQuery.of(context)
                      .size
                      .width *
                  .4,
              child: const SizedBox()),
          Container(
            padding: const EdgeInsets.symmetric(
                horizontal: 20),
            child: SingleChildScrollView(
              child: Form(
                key : _formKey,
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.center,
                  mainAxisAlignment:
                      MainAxisAlignment.center,
                  children: <Widget>[


                    SizedBox(height: height * .1),

                    Image.asset("assets/logo2.png", width: 250, height: 250,),
                    // _title(),
                    const SizedBox(height: 35),
                    // CustomFormField(
                    //   hintText: 'Name',
                    //   inputFormatters: [
                    //     FilteringTextInputFormatter.allow(
                    //       RegExp(r"[a-zA-Z]+|\s"),
                    //     )
                    //   ],
                    //   validator: (val) {
                    //     if (!val!.isValidName) return 'Enter valid name';
                    //   },
                    // ),
                    CustomFormField(
                      hintText: 'Email',
                      controller : accountController.email,
                      validator: (val) {
                        if (!val!.isValidEmail) return 'Enter valid email';
                      },
                    ),
                    // CustomFormField(
                    //   hintText: 'Phone',
                    //   inputFormatters: [
                    //     FilteringTextInputFormatter.allow(
                    //       RegExp(r"[0-9]"),
                    //     )
                    //   ],
                    //   validator: (val) {
                    //     if (!val!.isValidPhone) return 'Enter valid phone';
                    //   },
                    // ),
                    CustomFormField(
                      hintText: 'Password',
                      controller: accountController.password,
                      validator: (val) {
                        if (!val!.isNotEmpty && !val.isNotNull) return 'Enter valid password';
                      },
                    ),
                    const SizedBox(height: 20),
                    Obx(()=>
                      InkWell(
                          onTap: () async{


                              if (_formKey.currentState!.validate()) {
                                await accountController.loginUser();
                                // if(){
                                //   Get.off(BottomNavigationBarScreen());
                                // }
                              }
                          },

                          child: accountController.isLoading.value== false ?
                          _submitButton():
                          const SpinKitWanderingCubes(
                            color: Colors.teal,
                          )
                      ),
                    ),

                    InkWell(
                      onTap: () => Get.to(
                          const ForgotPassword()),
                      child: Container(
                        padding: const EdgeInsets
                                .symmetric(
                            vertical: 10),
                        alignment:
                            Alignment.centerRight,
                        child: const Text(
                            'Forgot Password ?',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight:
                                    FontWeight
                                        .w500)),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(
                              const NumberRegister());
                        },
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty
                                  .all<Color>(Colors
                                      .purple),
                          backgroundColor:
                              MaterialStateProperty
                                  .all<Color>(
                                      Colors.white),
                          shape: MaterialStateProperty
                              .all<
                                  RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius
                                      .circular(
                                          24.0),
                            ),
                          ),
                        ),
                        child: const Padding(
                          padding:
                              EdgeInsets.all(14.0),
                          child: Text(
                            'Login With Phone',
                            style: TextStyle(
                                fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                    // _divider(),
                    // _facebookButton(),
                    SizedBox(height: height * .02),
                    _createAccountLabel(),
                  ],
                ),
              ),
            ),
          ),
          // Positioned(
          //     top: 40,
          //     left: 0,
          //     child: _backButton()),
          Positioned(
              top: 40,
              right: 0,
              child: _skipButton()),
        ],
      ),
    ));
  }
}




