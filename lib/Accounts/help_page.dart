import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: const Color(0xffffffff),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () => Get.back(),
        ),
        centerTitle: true,
        title: const Text(
          "Help Page",
          style: TextStyle(
            fontFamily: "Quicksand",
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Color(0xff2d2d2d),
          ),
          textAlign: TextAlign.left,
        ),
      ),
      body: SizedBox(
          width: Get.width * 1,
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.center,
            mainAxisAlignment:
                MainAxisAlignment.center,
            children: [
              contactCategory(
                  Icons.phone, "Phone Number"),
              contactCategory(
                  Icons.email, "Email ID"),
              contactCategory(
                  Icons.web, "Website"),
              contactCategory(
                  Icons.apps_sharp, "Twitter"),
            ],
          )),
    );
  }

  Widget contactCategory(
      IconData icon, String buttonLabel) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      width: Get.width * 0.8,
      decoration: BoxDecoration(
          borderRadius:
              BorderRadius.circular(10)),
      child: TextButton.icon(
          style: ButtonStyle(
              backgroundColor:
                  const MaterialStatePropertyAll(
                      Color(0xffffffff)),
              elevation:
                  const MaterialStatePropertyAll(
                      2),
              shape: MaterialStateProperty.all<
                      RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(18.0),
              ))),
          onPressed: () {},
          icon: Icon(icon),
          label: Text(
            buttonLabel,
            textAlign: TextAlign.start,
          )),
    );
  }
}
