import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../payment/paymentPage.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(
                Icons.arrow_back,
                size: 20,
                color: Colors.black,
              )),
          title: Column(
            children: const [
              Text(
                "Your Cart",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black),
              ),
              Text(
                "3 Items",
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.black54),
              ),
            ],
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start,
            children: [
              Container(
                width: Get.width * 1,
                padding: const EdgeInsets.only(
                    left: 10, right: 10),
                child: ListView.builder(
                  itemCount: 6,
                  shrinkWrap: true,
                  physics: RangeMaintainingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) =>
                      ListTile(
                    contentPadding:
                        const EdgeInsets.all(5),
                    leading: Container(
                      height: 85,
                      width: 85,
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(
                                  10),
                          color: Colors.black12),
                      child: const Icon(
                        Icons.interpreter_mode,
                      ),
                    ),
                    title: const Text(
                      "Head-Phone",
                      style: TextStyle(
                        fontFamily: "Ubuntu",
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff333333),
                      ),
                      textAlign: TextAlign.left,
                    ),
                    subtitle: Padding(
                      padding:
                          const EdgeInsets.all(8.0),
                      child: Row(
                        children: const [
                          Text(
                            "₹300",
                            style: TextStyle(
                              decoration:
                                  TextDecoration
                                      .lineThrough,
                              fontFamily: "Nunito",
                              fontSize: 14,
                              fontWeight:
                                  FontWeight.w600,
                              color:
                                  Color(0xff999999),
                            ),
                            textAlign:
                                TextAlign.left,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "₹200",
                            style: TextStyle(
                              fontFamily: "Nunito",
                              fontSize: 14,
                              fontWeight:
                                  FontWeight.w600,
                              color:
                                  Color(0xff000000),
                            ),
                            textAlign:
                                TextAlign.left,
                          ),
                        ],
                      ),
                    ),
                    trailing: Row(
                      mainAxisSize:
                          MainAxisSize.min,
                      children: [
                        const Text(
                          "Oty: 1",
                          style: TextStyle(
                            fontFamily: "Ubuntu",
                            fontSize: 14,
                            fontWeight:
                                FontWeight.w500,
                            color:
                                Color(0xff333333),
                          ),
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        IconButton(
                            onPressed: () {
                              final snackBar =
                                  SnackBar(
                                    duration: const Duration(seconds: 2),
                                content: const Text(
                                  'Item Removed from Cart',
                                  style: TextStyle(
                                      fontSize: 13,
                                  color: Color(0xFF000000)
                                  ),
                                ),
                                backgroundColor:
                                    (const Color(
                                        0xFFFFFFFF)),
                                action:
                                    SnackBarAction(
                                  label: 'dismiss',
                                  onPressed: () {},
                                ),
                              );
                              ScaffoldMessenger.of(
                                      context)
                                  .showSnackBar(
                                      snackBar);
                            },
                            icon: const Icon(Icons
                                .delete_outline_outlined))
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: Get.width * 1,
                padding: const EdgeInsets.only(
                    left: 10, right: 25, top: 15),
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Price Details",
                      style: TextStyle(
                          fontFamily: "Avenir Next",
                          fontSize: 17,
                          fontWeight:
                              FontWeight.w600,
                          color: Color(0xFF000000),
                          height: 2.2),
                      textAlign: TextAlign.start,
                    ),
                    Row(
                      mainAxisAlignment:
                          MainAxisAlignment
                              .spaceBetween,
                      children: const [
                        Text(
                          "Price",
                          style: TextStyle(
                              fontFamily:
                                  "Avenir Next",
                              fontSize: 17,
                              fontWeight:
                                  FontWeight.w500,
                              color:
                                  Color(0xFF000000),
                              height: 2.0),
                          textAlign:
                              TextAlign.start,
                        ),
                        Text(
                          "₹900",
                          style: TextStyle(
                              fontFamily:
                                  "Avenir Next",
                              fontSize: 17,
                              fontWeight:
                                  FontWeight.w500,
                              color:
                                  Color(0xFF000000),
                              height: 2.0),
                          textAlign:
                              TextAlign.start,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment:
                          MainAxisAlignment
                              .spaceBetween,
                      children: const [
                        Text(
                          "Discount",
                          style: TextStyle(
                              fontFamily:
                                  "Avenir Next",
                              fontSize: 17,
                              fontWeight:
                                  FontWeight.w500,
                              color:
                                  Color(0xFF000000),
                              height: 2.0),
                          textAlign:
                              TextAlign.start,
                        ),
                        Text(
                          "-₹300",
                          style: TextStyle(
                              fontFamily:
                                  "Avenir Next",
                              fontSize: 17,
                              fontWeight:
                                  FontWeight.w500,
                              color:
                                  Color(0xFFD10000),
                              height: 2.0),
                          textAlign:
                              TextAlign.start,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment:
                          MainAxisAlignment
                              .spaceBetween,
                      children: const [
                        Text(
                          "Delivery Charges",
                          style: TextStyle(
                              fontFamily:
                                  "Avenir Next",
                              fontSize: 17,
                              fontWeight:
                                  FontWeight.w500,
                              color:
                                  Color(0xFF000000),
                              height: 2.0),
                          textAlign:
                              TextAlign.start,
                        ),
                        Text(
                          "₹70",
                          style: TextStyle(
                              fontFamily:
                                  "Avenir Next",
                              fontSize: 17,
                              fontWeight:
                                  FontWeight.w500,
                              color:
                                  Color(0xFFD10000),
                              height: 2.0),
                          textAlign:
                              TextAlign.start,
                        ),
                      ],
                    ),
                    const Divider(
                      height: 10,
                      thickness: 2,
                    ),
                    Row(
                      mainAxisAlignment:
                          MainAxisAlignment
                              .spaceBetween,
                      children: const [
                        Text(
                          "Total Amount",
                          style: TextStyle(
                              fontFamily:
                                  "Avenir Next",
                              fontSize: 17,
                              fontWeight:
                                  FontWeight.w600,
                              color:
                                  Color(0xFF000000),
                              height: 2.0),
                          textAlign:
                              TextAlign.start,
                        ),
                        Text(
                          "₹600",
                          style: TextStyle(
                              fontFamily:
                                  "Avenir Next",
                              fontSize: 17,
                              fontWeight:
                                  FontWeight.w600,
                              color:
                                  Color(0xFF000000),
                              height: 2.0),
                          textAlign:
                              TextAlign.start,
                        ),
                      ],
                    ),
                    const Divider(
                      height: 10,
                      thickness: 2,
                    ),
                    const Text(
                      "You Will save ₹300 on this order",
                      style: TextStyle(
                          fontFamily: "Avenir Next",
                          fontSize: 17,
                          letterSpacing: 0.5,
                          wordSpacing: 1,
                          fontWeight:
                              FontWeight.w600,
                          color: Color(0xFFD00000),
                          height: 1.6),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
            decoration: const BoxDecoration(
                border: Border(
              bottom: BorderSide(width: 0.5),
              top: BorderSide(width: 0.5),
            )),
            margin: const EdgeInsets.symmetric(
                horizontal: 25, vertical: 10),
            height: 60,
            width: Get.width * 0.9,
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.center,
                  crossAxisAlignment:
                      CrossAxisAlignment.center,
                  children: const [
                    Text(
                      "₹900",
                      style: TextStyle(
                          decoration:
                              TextDecoration
                                  .lineThrough,
                          fontSize: 16,
                          fontWeight:
                              FontWeight.w400),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "₹600",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight:
                              FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                TextButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty
                                .all(const Color(
                                    0xFF3E66D8))),
                    onPressed: () {
                      Get.to(PaymentPage());
                    },
                    child: SizedBox(
                      height: 30,
                      width: Get.width * 0.4,
                      child: const Center(
                          child: Text(
                        "Place Order",
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.white),
                      )),
                    )),
              ],
            )));
  }
}
