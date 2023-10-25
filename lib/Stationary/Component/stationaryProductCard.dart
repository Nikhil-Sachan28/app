import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../ProductPage/productPage.dart';

class StationaryProductCard
    extends StatelessWidget {
  bool isRoundCorner;

  StationaryProductCard(
      {Key? key, this.isRoundCorner = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.to(ProductPage()),
      child: Card(
        elevation: 0,
        child: Column(
            mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
            crossAxisAlignment:
                CrossAxisAlignment.center,
            children: [
              Container(
                height: Get.height * 0.2,
                width: Get.width *
                    (isRoundCorner ? 0.4 : 0.45),
                decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage(
                          "assets/product.png"),
                      fit: BoxFit.cover),
                  color: Colors.white,
                  borderRadius: isRoundCorner
                      ? BorderRadius.circular(10)
                      : BorderRadius.zero,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 6.0, right: 10),
                  child: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment
                              .start,
                      mainAxisAlignment:
                          MainAxisAlignment
                              .spaceEvenly,
                      children: [
                        const Text(
                          "Brand Name - Product name, its specifications and all other details of it",
                          maxLines: 2,
                          style: TextStyle(
                            fontFamily:
                                "Quicksand",
                            fontSize: 12,
                            fontWeight:
                                FontWeight.w500,
                            color:
                                Color(0xff2d2d2d),
                            overflow: TextOverflow
                                .ellipsis,
                          ),
                          textAlign:
                              TextAlign.left,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment:
                              MainAxisAlignment
                                  .start,
                          children: const [
                            Align(
                              alignment: Alignment
                                  .centerLeft,
                              child: Text(
                                "₹199",
                                style: TextStyle(
                                  fontFamily:
                                      "Quicksand",
                                  fontSize: 16,
                                  fontWeight:
                                      FontWeight
                                          .w700,
                                  color: Color(
                                      0xff2d2d2d),
                                ),
                                textAlign:
                                    TextAlign
                                        .left,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              " 0.00",
                              style: TextStyle(
                                fontFamily:
                                    "Quicksand",
                                fontSize: 13,
                                fontWeight:
                                    FontWeight
                                        .w700,
                                color: Color(
                                    0xff979999),
                              ),
                              textAlign:
                                  TextAlign.left,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "(30% off)",
                              style: TextStyle(
                                fontFamily:
                                    "Quicksand",
                                fontSize: 12,
                                fontWeight:
                                    FontWeight
                                        .w700,
                                color: Color(
                                    0xff64a759),
                              ),
                              textAlign:
                                  TextAlign.left,
                            )
                          ],
                        )
                      ]),
                ),
              ),
            ]),
      ),
    );
  }
}
