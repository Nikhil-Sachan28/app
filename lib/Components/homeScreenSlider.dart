// ignore_for_file: must_be_immutable

import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreenSlider extends StatefulWidget {
  double sliderHeight;

  HomeScreenSlider(
      {Key? key, this.sliderHeight = 0.3})
      : super(key: key);

  @override
  State<HomeScreenSlider> createState() =>
      _HomeScreenSliderState();
}

class _HomeScreenSliderState
    extends State<HomeScreenSlider> {
  List<String> images = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTIZccfNPnqalhrWev-Xo7uBhkor57_rKbkw&usqp=CAU",
    "https://wallpaperaccess.com/full/2637581.jpg"
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
      CrossAxisAlignment.start,
      children: [
        const Divider(
          height: 10,
          thickness: 2,
        ),
        Container(
          margin: const EdgeInsets.only(
              left: 10, bottom: 10),
          child: const Text(
            "Featured Screen",
            textAlign: TextAlign.start,
            style: TextStyle(

                fontWeight: FontWeight.w500,
                fontSize: 20),
          ),
        ),
        CarouselSlider(
          options: CarouselOptions(
            height:
            Get.height * widget.sliderHeight,
            autoPlay: false,
            viewportFraction: 1,
            // enlargeCenterPage: true,
            //scrollDirection: Axis.vertical,
            onPageChanged: (index, reason) {
              setState(
                    () {
                  _currentIndex = index;
                },
              );
            },
          ),
          items: images
              .map(
                (item) =>
                Card(
                  margin: const EdgeInsets.only(
                    // top: 3.0,
                    bottom: 10.0,
                  ),
                  elevation: 0.0,
                  shape:
                  const RoundedRectangleBorder(
                    borderRadius:
                    BorderRadius.zero,
                  ),
                  child: ClipRRect(
                    borderRadius:
                    BorderRadius.zero,
                    child: CachedNetworkImage(
                      placeholder: (context,
                          item) =>
                      const Icon(Icons.image),
                      imageUrl: item,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                ),
          )
              .toList(),
        ),
        Row(
          mainAxisAlignment:
          MainAxisAlignment.center,
          children: images.map((urlOfItem) {
            int index = images.indexOf(urlOfItem);
            return Container(
              width: 8.0,
              height: 8.0,
              margin: const EdgeInsets.symmetric(
                  vertical: 5.0, horizontal: 2.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentIndex == index
                    ? const Color.fromRGBO(
                    0, 0, 0, 0.8)
                    : const Color.fromRGBO(
                    0, 0, 0, 0.3),
              ),
            );
          }).toList(),
        )
      ],
    );
  }
}
