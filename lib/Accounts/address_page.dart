import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddressPage extends StatelessWidget {
  const AddressPage({Key? key}) : super(key: key);

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
          "Address Book",
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
        padding: const EdgeInsets.only(
            bottom: 10, top: 10),
        itemCount: 5,
        itemBuilder: (context, index) => Card(
          margin: const EdgeInsets.symmetric(
              horizontal: 10, vertical: 5),
          child: ListTile(
            contentPadding:
                const EdgeInsets.symmetric(
                    vertical: 10, horizontal: 20),
            onTap: () {},
            leading: const Icon(
                Icons.location_history_outlined),
            title: const Text(
              "Address Book",
              style: TextStyle(
                fontFamily: "Quicksand",
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xff2d2d2d),
              ),
              textAlign: TextAlign.left,
            ),
            subtitle: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  Text("$index subtitle"),
                  Text("$index subtitle"),
                  Text("$index subtitle"),
                ]),
            trailing: const Icon(Icons.edit),
          ),
        ),
      ),
    );
  }
}
