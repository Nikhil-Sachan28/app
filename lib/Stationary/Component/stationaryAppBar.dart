import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsearch/Stationary/Screen/categoryList.dart';
import 'package:jobsearch/Components/SearchBar.dart'as searchbar;

class StationaryAppBar extends StatelessWidget {
  bool isBottomTrue;
  bool isLeadingIcon;

  StationaryAppBar(
      {Key? key,
      this.isBottomTrue = false,
      this.isLeadingIcon = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor:
              const Color(0xFF3D5CFF),
          leading: isLeadingIcon
              ? InkWell(
                  onTap: () =>
                      Get.back(canPop: false),
                  child: const Icon(
                      Icons.arrow_back_ios))
              : null,
          title: const Icon(
              Icons.account_balance_sharp),
          actions: [
            InkWell(
                onTap: () =>
                    Get.to(const CategoryList()),
                child: const Icon(
                    Icons.menu_outlined)),
            const SizedBox(
              width: 10,
            ),
            Container(
                margin: const EdgeInsets.only(
                    right: 15),
                child: const Icon(
                    Icons.search_rounded))
          ],
          centerTitle: true,
          bottom: isBottomTrue
              ? PreferredSize(
                  preferredSize:
                      const Size.fromHeight(30),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(
                            bottom: 10, top: 10),
                    child: searchbar.SearchBar(
                      hintText: "Choose Location",
                      isPrefixIcon: false,
                      isLocationIcon: true,
                    ),
                  ))
              : null),
    );
  }
}
