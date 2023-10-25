import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TopImageBanner extends StatefulWidget {
  double sliderHeight;

  TopImageBanner(
      {Key? key, this.sliderHeight = 0.3})
      : super(key: key);

  @override
  State<TopImageBanner> createState() =>
      _TopImageBannerState();
}

class _TopImageBannerState
    extends State<TopImageBanner> {
  List<String> images = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTIZccfNPnqalhrWev-Xo7uBhkor57_rKbkw&usqp=CAU",
    "https://wallpaperaccess.com/full/2637581.jpg"
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height:
                Get.height * widget.sliderHeight,
            autoPlay: true,
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
                (item) => Card(
                  margin: const EdgeInsets.only(
                    // top: 3.0,
                    bottom: 10.0,
                  ),
                  elevation: 6.0,
                  shadowColor: Colors.redAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(
                            30.0),
                  ),
                  child: ClipRRect(
                    borderRadius:
                        const BorderRadius.all(
                      Radius.circular(5.0),
                    ),
                    child: Image.network(
                      item,
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
