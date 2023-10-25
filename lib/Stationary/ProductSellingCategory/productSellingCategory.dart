import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsearch/Stationary/Screen/productListView.dart';
import '../ProductPage/productPage.dart';

class ProductSellingCategory
    extends StatelessWidget {
  String topTitle;

  ProductSellingCategory(
      {Key? key, required this.topTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(
              horizontal: 15),
          child: Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
            children: [
              Text(
                topTitle,
                style: const TextStyle(
                  fontFamily: "Quicksand",
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff2d2d2d),
                ),
                textAlign: TextAlign.left,
              ),
              InkWell(
                onTap: () => Get.to(
                    const ProductListView()),
                child: const Text(
                  "See more",
                  style: TextStyle(
                    fontFamily: "Quicksand",
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff29367c),
                    height: 21 / 14,
                  ),
                  textAlign: TextAlign.left,
                ),
              )
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 13),
          height: Get.height * 0.40,
          width: Get.width * 1,
          child: ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) =>
                InkWell(
              onTap: () => Get.to(ProductPage()),
              child: Container(
                margin: const EdgeInsets.only(
                    right: 15, left: 5),
                height: Get.height * .4,
                width: Get.width * .40,
                decoration: const BoxDecoration(
                    color: Color(0xFFFFFFFF)),
                child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: Get.height * .23,
                        width: Get.width * .40,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage(
                                  "assets/product.png"),
                              fit: BoxFit.cover),
                          color: Colors.white,
                          borderRadius:
                              BorderRadius
                                  .circular(10),
                        ),
                      ),
                      Container(
                        margin:
                            const EdgeInsets.only(
                                top: 15),
                        height: Get.height * .13,
                        width: Get.width * .40,
                        child: Column(children: [
                          const Text(
                            "Brand Name - Product name, its specifications and all other details of it",
                            maxLines: 2,
                            style: TextStyle(
                              fontFamily:
                                  "Quicksand",
                              fontSize: 12,
                              fontWeight:
                                  FontWeight.w500,
                              color: Color(
                                  0xff2d2d2d),
                              overflow:
                                  TextOverflow
                                      .ellipsis,
                            ),
                            textAlign:
                                TextAlign.left,
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          const Align(
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
                                  TextAlign.left,
                            ),
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Row(
                            mainAxisAlignment:
                                MainAxisAlignment
                                    .start,
                            children: const [
                              Text(
                                " 0.00",
                                style: TextStyle(
                                  fontFamily:
                                      "Quicksand",
                                  fontSize: 12,
                                  fontWeight:
                                      FontWeight
                                          .w700,
                                  color: Color(
                                      0xff979999),
                                ),
                                textAlign:
                                    TextAlign
                                        .left,
                              ),
                              SizedBox(
                                width: 10,
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
                                    TextAlign
                                        .left,
                              )
                            ],
                          )
                        ]),
                      ),
                    ]),
              ),
            ),
          ),
        )
      ],
    );
  }
}
