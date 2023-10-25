import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsearch/Screens/cartPage.dart';
import 'package:jobsearch/Stationary/Component/productImageSlider.dart';
import 'package:jobsearch/Stationary/ProductSellingCategory/productSellingCategory.dart';
import 'package:jobsearch/Stationary/Screen/deliveryReturnPage.dart';

import '../../payment/paymentPage.dart';

class ProductPage extends StatelessWidget {
  ProductPage({Key? key}) : super(key: key);
  double productPrice = 150;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: bottomSheet(),
      floatingActionButtonLocation:
          FloatingActionButtonLocation
              .miniCenterDocked,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding:
              const EdgeInsets.only(left: 15.0),
          child: InkWell(
            onTap: () => Get.back(),
            child: const Icon(
              Icons.arrow_back_outlined,
              color: Colors.black,
              size: 20,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: const Color(0xFFF3F3F3),
          child: Column(children: [
            Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                height: Get.height * 0.5,
                width: Get.width * 1,
                child: Stack(
                  children: [
                    SizedBox(
                      height: Get.height * 0.5,
                      child: ProductImageSlider(
                        sliderHeight: 0.45,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(
                              right: 20.0,
                              bottom: 15),
                      child: Align(
                        alignment:
                            Alignment.bottomRight,
                        child: Container(
                          margin: const EdgeInsets
                              .only(bottom: 35),
                          child: TextButton.icon(
                              style:
                                  const ButtonStyle(
                                      padding: MaterialStatePropertyAll(EdgeInsets.symmetric(
                                          horizontal:
                                              15)),
                                      backgroundColor:
                                          MaterialStatePropertyAll(
                                        Color(
                                            0xFFFFFFFF),
                                      )),
                              onPressed: () {},
                              icon: const Icon(
                                Icons
                                    .favorite_border_outlined,
                                color: Color(
                                    0xFF555C81),
                              ),
                              label: const Text(
                                "Wishlist",
                                style: TextStyle(
                                  fontFamily:
                                      "Quicksand",
                                  fontSize: 16,
                                  fontWeight:
                                      FontWeight
                                          .w700,
                                  color: Color(
                                      0xff29367c),
                                ),
                                textAlign:
                                    TextAlign
                                        .center,
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            productNameSection(),
            deliverySection(),
            productDetail(),
            const SizedBox(
              height: 20,
            ),
            ProductSellingCategory(
                topTitle: 'Related Products'),
            const SizedBox(
              height: 60,
            )
          ]),
        ),
      ),
    );
  }

  Widget bottomSheet() {
    return UnconstrainedBox(
      child: Container(
        width: Get.width * 1,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              width: 1,
              color: Colors.black38,
            )),
        child: Center(
          child: Row(
              crossAxisAlignment:
                  CrossAxisAlignment.center,
              mainAxisAlignment:
                  MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: Get.width * 0.45,
                  height: 55,
                  padding:
                      const EdgeInsets.symmetric(
                          vertical: 5),
                  child: TextButton.icon(
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(
                                  Color(
                                      0xFF3040DC))),
                      onPressed: () {
                        Get.to(const CartPage());
                      },
                      icon: const Icon(
                        Icons
                            .add_shopping_cart_outlined,
                        color: Colors.white,
                      ),
                      label: const Text(
                        "Add To Cart",
                        style: TextStyle(
                            color: Color(
                                0xFFFFFFFF)),
                      )),
                ),
                Container(
                  width: Get.width * 0.45,
                  height: 55,
                  padding:
                      const EdgeInsets.symmetric(
                          vertical: 5),
                  child: TextButton.icon(
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(
                                  Color(
                                      0xFF3040DC))),
                      onPressed: () {
                        () => Get.to(PaymentPage(
                              price: productPrice,
                            ));
                      },
                      icon: const Icon(
                        Icons
                            .shopping_cart_outlined,
                        color: Colors.white,
                      ),
                      label: const Text(
                        "Buy Now",
                        style: TextStyle(
                            color: Color(
                                0xFFFFFFFF)),
                      )),
                ),
              ]),
        ),
      ),
    );
  }

  Widget productNameSection() {
    return Container(
      color: const Color(0xFFFFFFFF),
      padding: const EdgeInsets.only(
          left: 15.0, bottom: 10),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        mainAxisAlignment:
            MainAxisAlignment.start,
        children: [
          const Text(
            "SKU: 8901425031926",
            style: TextStyle(
              fontFamily: "Quicksand",
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Color(0xff979999),
            ),
            textAlign: TextAlign.left,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Brand Name - Product name, its specifications and all other details of it",
            style: TextStyle(
              fontSize: 14,
              fontFamily: "Quicksand",
              color: Color(0xff2d2d2d),
            ),
            textAlign: TextAlign.left,
          ),
          const SizedBox(
            height: 6,
          ),
          Row(
            children: [
              Text(
                "₹$productPrice",
                style: const TextStyle(
                  fontFamily: "Quicksand",
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff2d2d2d),
                  height: 25 / 20,
                ),
                textAlign: TextAlign.left,
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                "190.00",
                style: TextStyle(
                  fontFamily: "Quicksand",
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff979999),
                  height: 15 / 12,
                ),
                textAlign: TextAlign.left,
              ),
              const SizedBox(
                width: 5,
              ),
              const Text(
                "(33% off)",
                style: TextStyle(
                  fontFamily: "Quicksand",
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff64a759),
                  height: 15 / 12,
                ),
                textAlign: TextAlign.left,
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget deliverySection() {
    return Card(
      margin: const EdgeInsets.symmetric(
          vertical: 15),
      elevation: 0,
      child: Container(
        margin: const EdgeInsets.symmetric(
            vertical: 10, horizontal: 10),
        child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start,
            children: [
              const Text(
                "Estimated delivery for",
                style: TextStyle(
                  fontFamily: "Quicksand",
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff2d2d2d),
                  height: 21 / 14,
                ),
                textAlign: TextAlign.center,
              ),
              Container(
                margin: const EdgeInsets.only(
                    top: 7, bottom: 7),
                padding: const EdgeInsets.only(
                    left: 10),
                height: 35,
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 1,
                        color: Colors.black),
                    borderRadius:
                        BorderRadius.circular(
                            10)),
                child: TextField(
                  onTap: () {},
                  decoration:
                      const InputDecoration(
                          hintText:
                              "India - other"),
                ),
              ),
              Row(
                children: const [
                  Icon(Icons.delivery_dining),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Arrives by Wed, 15th Jun 2022",
                    style: TextStyle(
                      fontFamily: "Quicksand",
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff2d2d2d),
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
              Container(
                height: 40,
                color: const Color(0xFFF3F3F3),
                child: Row(
                    mainAxisAlignment:
                        MainAxisAlignment
                            .spaceBetween,
                    children: [
                      InkWell(
                        onTap: () => Get.to(
                            const DeliveryReturn()),
                        child: const Text(
                          "See delivery and returns",
                          style: TextStyle(
                            fontFamily:
                                "Quicksand",
                            fontSize: 14,
                            fontWeight:
                                FontWeight.w700,
                            color:
                                Color(0xff29367c),
                          ),
                          textAlign:
                              TextAlign.left,
                        ),
                      ),
                      const Icon(
                        Icons
                            .arrow_forward_ios_outlined,
                        size: 15,
                      )
                    ]),
              )
            ]),
      ),
    );
  }

  Widget productDetail() {
    return Container(
      color: const Color(0xFFFFFFFF),
      padding: const EdgeInsets.only(
          left: 15.0, bottom: 10, top: 10),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        mainAxisAlignment:
            MainAxisAlignment.start,
        children: [
          const Text(
            "Product details",
            style: TextStyle(
              fontFamily: "Quicksand",
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: Color(0xff2d2d2d),
              height: 21 / 14,
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(
            width: Get.width * 0.9,
            height: Get.height * 0.25,
            child: GridView(
              gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 2,
                      crossAxisSpacing: 20),
              children: [
                productConfigCard(),
                productConfigCard(),
                productConfigCard(),
                productConfigCard(),
              ],
            ),
          ),
          description(),
          description(),
        ],
      ),
    );
  }

  Widget productConfigCard() {
    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.start,
      children: const [
        Text(
          "Weight",
          style: TextStyle(
            fontFamily: "Quicksand",
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: Color(0xff29367c),
            height: 21 / 14,
          ),
          textAlign: TextAlign.left,
        ),
        Text(
          "80 gms",
          style: TextStyle(
            fontFamily: "Quicksand",
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Color(0xff2d2d2d),
            height: 21 / 14,
          ),
          textAlign: TextAlign.left,
        ),
        Divider(
          height: 1,
          thickness: 1,
          color: Colors.black26,
        )
      ],
    );
  }

  Widget description() {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: const [
          SizedBox(
            height: 7,
          ),
          Text(
            "Description",
            style: TextStyle(
              fontFamily: "Quicksand",
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: Color(0xff29367c),
              height: 21 / 14,
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.",
            style: TextStyle(
              fontFamily: "Quicksand",
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color(0xff2d2d2d),
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(
            height: 6,
          ),
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Divider(
              height: 2,
              thickness: 2,
              color: Colors.black26,
            ),
          )
        ],
      ),
    );
  }
}
