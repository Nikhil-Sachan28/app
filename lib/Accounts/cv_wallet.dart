import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CvWalletPage extends StatefulWidget {
  const CvWalletPage({super.key});

  @override
  _CvWalletPageState createState() =>
      _CvWalletPageState();
}

class _CvWalletPageState
    extends State<CvWalletPage> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context)
            .scaffoldBackgroundColor,
        elevation: 1,
        centerTitle: true,
        title: const Text(
          "CV Wallet",
          style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.w500),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.green,
          ),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(
            left: 16, top: 10, right: 16),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              // Center(
              //   child: Text(
              //     "Edit Profile",
              //     style: TextStyle(
              //         fontSize: 25,
              //         fontWeight:
              //             FontWeight.w500),
              //   ),
              // ),
              // SizedBox(
              //   height: 15,
              // ),
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 4,
                              color: Theme.of(
                                      context)
                                  .scaffoldBackgroundColor),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 2,
                                blurRadius: 10,
                                color: Colors
                                    .black
                                    .withOpacity(
                                        0.1),
                                offset:
                                    const Offset(
                                        0, 10))
                          ],
                          shape:
                              BoxShape.rectangle,
                          image:
                              const DecorationImage(
                                  fit: BoxFit
                                      .cover,
                                  image:
                                      NetworkImage(
                                    "https://images.pexels.com/photos/3307758/pexels-photo-3307758.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=250",
                                  ))),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              buildTextField(
                  "Full Name", "Test", false),

              Wrap(
                direction: Axis.horizontal,
                children: [
                  SizedBox(
                    width: Get.width * 0.45,
                    child: buildTextField(
                        "Father Name",
                        "Father",
                        false),
                  ),
                  SizedBox(
                    width: Get.width * 0.45,
                    child: buildTextField(
                        "Mother Name",
                        "Mother",
                        false),
                  ),
                  SizedBox(
                    width: Get.width * 0.45,
                    child: buildTextField(
                        "Village",
                        "village Name",
                        false),
                  ),
                  SizedBox(
                    width: Get.width * 0.45,
                    child: buildTextField(
                        "House Number",
                        "H.No. 256",
                        false),
                  ),
                  SizedBox(
                    width: Get.width * 0.45,
                    child: buildTextField("City",
                        "City Name", false),
                  ),
                  SizedBox(
                    width: Get.width * 0.45,
                    child: buildTextField(
                        "Post Office",
                        "Post Office",
                        false),
                  ),
                  SizedBox(
                    width: Get.width * 0.45,
                    child: buildTextField(
                        "Tehsil",
                        "Tehsil",
                        false),
                  ),
                  SizedBox(
                    width: Get.width * 0.45,
                    child: buildTextField(
                        "District",
                        "District",
                        false),
                  ),
                  SizedBox(
                    width: Get.width * 0.45,
                    child: buildTextField(
                        "Pin Code",
                        "122001",
                        false),
                  ),
                  SizedBox(
                    width: Get.width * 0.45,
                    child: buildTextField(
                        "Regional",
                        "Indian",
                        false),
                  ),
                  SizedBox(
                    width: Get.width * 0.45,
                    child: buildTextField(
                        "Category", "Gen", false),
                  ),
                  SizedBox(
                    width: Get.width * 0.45,
                    child: buildTextField(
                        "Qualification",
                        "Post Grad.",
                        false),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: Get.width * 0.40,
                        child: TextButton.icon(
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(
                                      Color(
                                          0xFF3D4FD2))),
                          onPressed: () async {},
                          icon: const Icon(
                              Icons
                                  .download_outlined,
                              color:
                                  Colors.white),
                          label: const Text(
                            'Choose Documents',
                            style: TextStyle(
                                color:
                                    Colors.white,
                                fontSize: 12),
                          ),
                        ),
                      ),
                      Container(
                        margin:
                            const EdgeInsets.only(
                                left: 5),
                        width: Get.width * 0.45,
                        child: const Center(
                          child: Text(
                            'No Document Selected',
                            overflow: TextOverflow
                                .ellipsis,
                            style: TextStyle(
                                fontWeight:
                                    FontWeight
                                        .w500,
                                color:
                                    Colors.black,
                                fontSize: 14),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment:
                    MainAxisAlignment
                        .spaceBetween,
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(
                                20)),
                    child: Container(
                      padding: const EdgeInsets
                              .symmetric(
                          horizontal: 50,
                          vertical: 10),
                      child: const Text("CANCEL",
                          style: TextStyle(
                              fontSize: 14,
                              letterSpacing: 2.2,
                              color:
                                  Colors.black)),
                    ),
                  ),
                  Card(
                    color: Colors.green,
                    // padding: EdgeInsets.symmetric(
                    //     horizontal: 50),
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(
                                20)),
                    child: Container(
                      padding: const EdgeInsets
                              .symmetric(
                          horizontal: 50,
                          vertical: 10),
                      child: const Text(
                        "SAVE",
                        style: TextStyle(
                            fontSize: 14,
                            letterSpacing: 2.2,
                            color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 35,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(
      String labelText,
      String placeholder,
      bool isPasswordTextField) {
    return Padding(
      padding: const EdgeInsets.only(
          bottom: 5.0, right: 10),
      child: TextField(
        obscureText: isPasswordTextField
            ? showPassword
            : false,
        decoration: InputDecoration(
            suffixIcon: isPasswordTextField
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        showPassword =
                            !showPassword;
                      });
                    },
                    icon: const Icon(
                      Icons.remove_red_eye,
                      color: Colors.grey,
                    ),
                  )
                : null,
            contentPadding:
                const EdgeInsets.only(bottom: 3),
            labelText: labelText,
            floatingLabelBehavior:
                FloatingLabelBehavior.always,
            hintText: placeholder,
            hintStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )),
      ),
    );
  }
}
