import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DownloadedPage extends StatelessWidget {
  const DownloadedPage({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 1,
          backgroundColor:
              const Color(0xffffffff),
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () => Get.back(),
          ),
          centerTitle: true,
          title: const Text(
            "Downloaded Content",
            style: TextStyle(
              fontFamily: "Quicksand",
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Color(0xff2d2d2d),
            ),
            textAlign: TextAlign.left,
          ),
        ),
        body: ListView.builder(
          padding: const EdgeInsets.symmetric(
              vertical: 15, horizontal: 15),
          itemCount: 10,
          itemBuilder: (context, index) => Card(
            child: SizedBox(
              height: Get.height * 0.15,
              child: ListTile(
                leading: const CircleAvatar(
                    radius: 25,
                    child: Icon(
                        Icons.content_paste)),
                title: Text(
                  "Course Name $index",
                  style: const TextStyle(
                    fontFamily: "Quicksand",
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff2d2d2d),
                  ),
                  textAlign: TextAlign.left,
                ),
                subtitle: const Text(
                  'downloaded content',
                  style: TextStyle(
                    fontFamily: "Quicksand",
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff2d2d2d),
                  ),
                  textAlign: TextAlign.left,
                ),
                trailing: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "View Detail",
                      style: TextStyle(
                          fontWeight:
                              FontWeight.normal),
                    )),
              ),
            ),
          ),
        ));
  }
}
