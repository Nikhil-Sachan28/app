// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsearch/Components/searchFilter.dart';

class SearchBar extends StatelessWidget {
  String hintText;
  bool isPrefixIcon;
  bool isLocationIcon;

  SearchBar(
      {Key? key,
      required this.hintText,
      this.isPrefixIcon = true,
      this.isLocationIcon = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            color: Color(0xFFF4F3FD),
            borderRadius: BorderRadius.all(
                Radius.circular(10))),
        width: Get.height * 0.5,
        height: 40,
        child: Center(
            child: TextField(
          decoration: InputDecoration(
            hintText: hintText,
            prefixIcon: isLocationIcon
                ? const Icon(
                    Icons.location_on_rounded)
                : const Icon(
                    Icons.search_outlined),
            suffixIcon: isPrefixIcon
                ? InkWell(
                    onTap: () => Get.to(
                        const SearchFilter()),
                    child: const Icon(
                        Icons.filter_list))
                : null,
          ),
        )));
  }
}
