import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsearch/Configs/Constants.dart';

class RequestDemo extends StatefulWidget {
  const RequestDemo({Key? key}) : super(key: key);

  @override
  State<RequestDemo> createState() =>
      _RequestDemoState();
}

class _RequestDemoState
    extends State<RequestDemo> {
  String? gender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.center,
            children: [
              SafeArea(
                child: UnconstrainedBox(
                  child: Container(
                    width: Get.width * 1,
                    color:
                        const Color(0xFFBAD1FF),
                    padding: const EdgeInsets
                        .symmetric(vertical: 15),
                    child: Row(
                        mainAxisAlignment:
                            MainAxisAlignment
                                .spaceEvenly,
                        crossAxisAlignment:
                            CrossAxisAlignment
                                .center,
                        children: [
                          const Text(
                            "Schedule a 1:1 consultaion",
                            textAlign:
                                TextAlign.start,
                            style: TextStyle(
                              fontFamily:
                                  "Poppins",
                              fontSize: 20,
                              fontWeight:
                                  FontWeight.w500,
                              color: Color(
                                  0xff000000),
                            ),
                          ),
                          Center(
                            child: InkWell(
                              onTap: () =>
                                  Get.back(
                                      canPop:
                                          false),
                              child: const Icon(Icons
                                  .cancel_outlined),
                            ),
                          ),
                        ]),
                  ),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 20),
                child: Column(children: [
                  buildTextField("Full Name",
                      "Devesh", false),
                  const SizedBox(
                    height: 15,
                  ),
                  buildTextField("Email Id",
                      "email#gmail.com", false),
                  const SizedBox(
                    height: 15,
                  ),
                  buildTextField("Mobile No.",
                      "+91 0987654321", false),
                  const SizedBox(
                    height: 15,
                  ),
                  buildTextField("Organisation",
                      "Organisation Name", false),
                  const SizedBox(
                    height: 15,
                  ),
                  Wrap(
                    children: [
                      const Text(
                        "You want to connect with us for",
                        style: TextStyle(
                          fontFamily: "Kanit",
                          fontSize: 17,
                          fontWeight:
                              FontWeight.w500,
                          color:
                              Color(0xff1d1d23),
                          height: 25 / 17,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      RadioListTile(
                        contentPadding:
                            EdgeInsets.zero,
                        title:
                            const Text("Support"),
                        value: "Support",
                        selectedTileColor:
                            const Color(
                                0xFF3D5CFF),
                        groupValue: gender,
                        onChanged: (value) {
                          setState(() {
                            gender =
                                value.toString();
                          });
                        },
                      ),
                      RadioListTile(
                        contentPadding:
                            EdgeInsets.zero,
                        title: const Text(
                            "Sales (Demos & Pricing)"),
                        value:
                            "Sales (Demos & Pricing)",
                        groupValue: gender,
                        selectedTileColor:
                            const Color(
                                0xFF3D5CFF),
                        onChanged: (value) {
                          setState(() {
                            gender =
                                value.toString();
                          });
                        },
                      ),
                      RadioListTile(
                        contentPadding:
                            EdgeInsets.zero,
                        selectedTileColor:
                            const Color(
                                0xFF3D5CFF),
                        title: const Text(
                            "Partnerships"),
                        value: "Partnerships",
                        groupValue: gender,
                        onChanged: (value) {
                          setState(() {
                            gender =
                                value.toString();
                          });
                        },
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextButton(
                      style: ButtonStyle(
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius
                                          .circular(
                                              10))),
                          backgroundColor:
                              const MaterialStatePropertyAll(
                                  Color(
                                      0xFF000000))),
                      onPressed: () {
                        Get.to(
                            const RequestDemo());
                      },
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(
                                horizontal: 10.0,
                                vertical: 2),
                        child: Text(
                          "Submit Your Details",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 16,
                            fontWeight:
                                FontWeight.w500,
                            color:
                                Color(0xffffffff),
                          ),
                          textAlign:
                              TextAlign.left,
                        ),
                      )),
                ]),
              ),
              const SizedBox(
                width: 130,
                child: Divider(
                  height: 25,
                  thickness: 1,
                  color: Color(0xFF000000),
                ),
              ),
              Container(
                width: Get.width * 1,
                color: const Color(0xFFBAD1FF),
                padding: const EdgeInsets.only(
                    left: 10, right: 10, top: 15),
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Contact Information",
                      style: TextStyle(
                          fontFamily:
                              "Avenir Next",
                          fontSize: 30,
                          fontWeight:
                              FontWeight.w600,
                          color:
                              Color(0xFF000000),
                          height: 1.1),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(
                      width: 100,
                      child: Divider(
                        height: 25,
                        thickness: 2,
                        color: Color(0xFF000000),
                      ),
                    ),
                    ListTile(
                      contentPadding:
                          EdgeInsets.zero,
                      leading:
                          Icon(Icons.location_on),
                      title: Text(
                        "Our Addresses",
                        style: TextStyle(
                          fontFamily: "Inter",
                          fontSize: 18,
                          fontWeight:
                              FontWeight.w600,
                          color:
                              Color(0xff000000),
                        ),
                        // textAlign:
                        //     TextAlign.center,
                      ),
                      subtitle: Text(
                        "Delhi Office: ${Constants.CompanyName}, JanakPuri East , New Delhi, 122002",
                        style: TextStyle(
                          fontFamily: "Inter",
                          fontSize: 14,
                          fontWeight:
                              FontWeight.w500,
                          color:
                              Color(0xff000000),
                        ),
                        // textAlign:
                        //     TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      contentPadding:
                          EdgeInsets.zero,
                      leading: Icon(
                          Icons.corporate_fare),
                      title: Text(
                        "Company",
                        style: TextStyle(
                          fontFamily: "Inter",
                          fontSize: 18,
                          fontWeight:
                              FontWeight.w600,
                          color:
                              Color(0xff000000),
                        ),
                        // textAlign:
                        //     TextAlign.center,
                      ),
                      subtitle: Text(
                        "Delhi Office: ${Constants.CompanyName} Pvt. Ltd.\nGST Number: 9324823486\nPan Number: 9324823486",
                        style: TextStyle(
                          fontFamily: "Inter",
                          fontSize: 14,
                          fontWeight:
                              FontWeight.w500,
                          color:
                              Color(0xff000000),
                        ),
                        // textAlign:
                        //     TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              )
            ]),
      ),
    );
  }

  Widget buildTextField(
      String labelText,
      String placeholder,
      bool isPasswordTextField) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderSide: const BorderSide(
                width: 4, color: Colors.black54),
            borderRadius:
                BorderRadius.circular(10)),
        labelText: labelText,
        hintText: placeholder,
      ),
    );
  }
}
