// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Favourite extends StatelessWidget {
  bool isWatchList;

  Favourite({Key? key, this.isWatchList = false})
      : super(key: key);

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
        title: Text(
          isWatchList ? "WatchList" : "Favourite",
          style: const TextStyle(
            fontFamily: "Quicksand",
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Color(0xff2d2d2d),
          ),
          textAlign: TextAlign.left,
        ),
      ),
      body: ListView.builder(
        itemCount: 10,
        padding: const EdgeInsets.only(
            bottom: 5, top: 5),
        itemBuilder: (context, index) => ListTile(
          onTap: () {},
          leading:
              Image.asset('assets/product.png'),
          title: Text("Title $index"),
          subtitle: Text("subTitle $index"),
          trailing: const Icon(
            Icons.favorite,
            size: 20,
            color: Color(0xffe80b0b),
          ),
        ),
      ),
    );
  }
}
