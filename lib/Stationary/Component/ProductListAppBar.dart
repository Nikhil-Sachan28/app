import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductListAppBar extends StatelessWidget {
  const ProductListAppBar({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () => Get.back(),
            child: const Icon(Icons.arrow_back)),
        title: const Text(
          "Paint and Brushes",
          overflow: TextOverflow.fade,
          style: TextStyle(
            fontFamily: "Quicksand",
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: Color(0xffffffff),
          ),
          textAlign: TextAlign.left,
        ),
        actions: const [
          Icon(Icons.shopping_cart),
          SizedBox(
            width: 15,
          ),
          Icon(Icons.search_rounded),
          SizedBox(
            width: 15,
          )
        ],
      ),
    );
  }
}
