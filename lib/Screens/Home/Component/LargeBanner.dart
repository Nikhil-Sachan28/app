// ignore_for_file: must_be_immutable

import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_redirect/store_redirect.dart';

class LargeBanner extends StatelessWidget {
  LargeBanner({Key? key}) : super(key: key);
  List<String> images = [
    "https://images.pexels.com/photos/3585088/pexels-photo-3585088.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/5444435/pexels-photo-5444435.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(
            horizontal: 5, vertical: 10),
        width: Get.width * 1,
        height: Get.height * 0.8,
        decoration: const BoxDecoration(
            shape: BoxShape.circle),
        child: Column(
          children: [
            const Text(
              "Store Featured",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20),
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: Get.height * 0.75,
                autoPlay: true,
                autoPlayInterval:
                    const Duration(seconds: 6),
                viewportFraction: 1,
                // enlargeCenterPage: true,
                //scrollDirection: Axis.vertical,
              ),
              items: images
                  .map(
                    (item) => Card(
                      margin:
                          const EdgeInsets.only(
                        // top: 3.0,
                        bottom: 5.0,
                      ),
                      elevation: 0.0,
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius
                                    .all(
                                Radius.circular(
                                    10)),
                        child: InkWell(
                          onTap: () =>
                              StoreRedirect
                                  .redirect(
                            androidAppId:
                                "com.os.airforce",
                            iOSAppId:
                                "com.os.airforce",
                          ),
                          child:
                              CachedNetworkImage(
                            placeholder: (context,
                                    item) =>
                                const Icon(
                                    Icons.image),
                            imageUrl: item,
                            fit: BoxFit.cover,
                            width:
                                double.infinity,
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ],
        ));
  }
}
