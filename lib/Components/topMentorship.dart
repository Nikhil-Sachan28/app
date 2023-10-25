import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MentorshipPage extends StatelessWidget {
  const MentorshipPage({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 2,
      shape: RoundedRectangleBorder(
          side: const BorderSide(
              color: Colors.blue),
          borderRadius:
              BorderRadius.circular(10)),
      child: SizedBox(
        height: Get.height * 0.30,
        width: Get.width * 0.8,
        child: Column(children: [
          Expanded(
              child: Stack(
            children: [
              Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    color: Colors.blue,
                    height: Get.height * 0.1,
                  )),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: 90,
                  height: 90,
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 4,
                          color: Theme.of(context)
                              .scaffoldBackgroundColor),
                      boxShadow: [
                        BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 10,
                            color: Colors.black
                                .withOpacity(0.1),
                            offset: const Offset(
                                0, 10))
                      ],
                      shape: BoxShape.circle,
                      image:
                          const DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                "https://images.pexels.com/photos/10057618/pexels-photo-10057618.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                              ))),
                ),
              ),
            ],
          )),
          Expanded(
              child: Column(
            mainAxisAlignment:
                MainAxisAlignment.spaceEvenly,
            children: const [
              Align(
                alignment: Alignment.topCenter,
                child: Text(
                  "Devesh Khatuwal",
                  style: TextStyle(
                    fontFamily: "Quicksand",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff2d2d2d),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 13.0),
                  child: Text(
                    "SOFTWARE ENGINEER | SDE | JAVA DEVELOPER | SOFTWARE TRAINER | PYTHON DEVELOPER | ANDROID DEVELOPER | FULLSTACK DEVELOPER",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF2869C4),
                    ),
                    maxLines: 2,
                    overflow:
                        TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          )),
        ]),
      ),
    );
  }
}
