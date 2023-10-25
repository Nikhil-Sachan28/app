import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({Key? key})
      : super(key: key);

  @override
  State<CategoryList> createState() =>
      _CategoryListState();
}

class _CategoryListState
    extends State<CategoryList> {
  List<String> items =
      List.generate(5, (index) => 'Item $index');
  bool showMore = false;

  void toggleShowMore() {
    setState(() {
      showMore = !showMore;
    });
  }

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
          "Category",
          style: TextStyle(
            fontFamily: "Quicksand",
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Color(0xff2d2d2d),
          ),
          textAlign: TextAlign.left,
        ),
      ),
      body: ListView(
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount:
                showMore ? items.length : 3,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(items[index]),
              );
            },
          ),
          if (!showMore)
            ListTile(
              title: const Text('Show More'),
              onTap: toggleShowMore,
              trailing: const Icon(Icons.add),
            ),
          if (showMore)
            ListView.builder(
              shrinkWrap: true,
              itemCount: items.length - 3,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(items[index + 3]),
                );
              },
            ),
        ],
      ),
    );
  }
}
