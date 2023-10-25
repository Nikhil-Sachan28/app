import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentPage extends StatefulWidget {
  double price;

  PaymentPage({Key? key, this.price = 100})
      : super(key: key);

  @override
  State<PaymentPage> createState() =>
      _PaymentPageState();
}

class _PaymentPageState
    extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(
              left: 10, right: 7),
          child: Stack(
            children: [
              Align(
                child: Column(
                  children: [
                    topBar(widget.price),
                    const Align(
                        alignment:
                            Alignment.centerLeft,
                        child: Text(
                          "UPI",
                          style: TextStyle(
                            fontFamily:
                                "Montserrat",
                            fontSize:
                                17.026634216308594,
                            fontWeight:
                                FontWeight.w500,
                            color:
                                Color(0xff000000),
                            height: 22 /
                                17.026634216308594,
                          ),
                          textAlign: TextAlign.left,
                        )),
                    Container(
                      margin: const EdgeInsets.only(
                          top: 5),
                      decoration:
                          const BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 2,
                            blurStyle:
                                BlurStyle.outer,
                            offset: Offset(0, 1.0),
                          ),
                        ],
                      ),
                      child: Column(children: [
                        upiCard('PhonePe',
                            "assets/phonepe.png"),
                        Divider(
                          height: 3,
                          color:
                              Colors.grey.shade300,
                        ),
                        upiCard('Mobikwik',
                            "assets/mobikwik.png"),
                        Divider(
                          height: 3,
                          color:
                              Colors.grey.shade300,
                        ),
                        upiCard('CRED Pay',
                            "assets/cred.png"),
                      ]),
                    ),
                    Container(
                      alignment:
                          Alignment.centerLeft,
                      margin: const EdgeInsets.only(
                          top: 10, bottom: 15),
                      child: const Text(
                        "Preferred Mode",
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize:
                              17.026634216308594,
                          fontWeight:
                              FontWeight.w500,
                          color: Color(0xff000000),
                          height: 22 /
                              17.026634216308594,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Column(
                      children: [
                        Card(
                            child: SizedBox(
                          width: Get.width * 1,
                          child: upiCard(
                              'Google Pay',
                              "assets/googlepay.png"),
                        )),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        Card(
                            child: SizedBox(
                          width: Get.width * 1,
                          child: wallet(
                              'Paytm',
                              "assets/paytm.png",
                              200),
                        )),
                        Card(
                          child: card(9876,
                              'assets/masterCard.png'),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                    height: 70,
                    width: Get.width * 1,
                    child: Center(
                      child: Container(
                        decoration:
                            const BoxDecoration(
                                color: Color(
                                    0xFF3D5CFF),
                                borderRadius:
                                    BorderRadius
                                        .all(
                                  Radius.circular(
                                      15),
                                )),
                        height: 45,
                        width: Get.width * 0.75,
                        alignment:
                            Alignment.topCenter,
                        child: const Center(
                          child: Text(
                            "Pay Now",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 17,
                              fontWeight:
                                  FontWeight.w500,
                              color:
                                  Color(0xFFFFFFFF),
                              height:
                                  27.088333129882812 /
                                      16,
                            ),
                            textAlign:
                                TextAlign.left,
                          ),
                        ),
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }

  card(
    int cardNumber,
    String cardImage,
  ) {
    return Container(
      height: 70,
      // width: 45,
      margin: const EdgeInsets.only(
          left: 10, right: 20),
      child: Row(
        mainAxisAlignment:
            MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius:
                      const BorderRadius.all(
                          Radius.circular(6)),
                  border: Border.all(
                      width: 1,
                      color:
                          Colors.grey.shade300)),
              child: Image.asset(
                cardImage,
                height: 45,
                width: 45,
              ),
            ),
            Container(
              margin:
                  const EdgeInsets.only(left: 10),
              child: Text(
                "**** $cardNumber",
                style: const TextStyle(
                  fontFamily: "Montserrat",
                  fontSize: 17.03,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff000000),
                  height: 22 / 17.03,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Container(
              height: 15,
              width: 40,
              decoration: const BoxDecoration(
                  color: Color(0xFFEFE2FF),
                  borderRadius: BorderRadius.all(
                      Radius.circular(5))),
              child: const Center(
                  child: Text(
                "Secured",
                style: TextStyle(
                  fontFamily: "Montserrat",
                  fontSize: 8.513317108154297,
                  fontWeight: FontWeight.w600,
                  color: Colors.indigoAccent,
                  // height: 22 / 8.513317108154297,
                ),
                textAlign: TextAlign.left,
              )),
            )
          ]),
          const Icon(Icons.circle_outlined)
        ],
      ),
    );
  }

  wallet(String walletName, String walletImage,
      int walletBalance) {
    return Container(
      height: 55,
      // width: 45,
      margin: const EdgeInsets.only(
          left: 10, right: 20),
      child: Row(
        mainAxisAlignment:
            MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius:
                      const BorderRadius.all(
                          Radius.circular(6)),
                  border: Border.all(
                      width: 1,
                      color:
                          Colors.grey.shade300)),
              child: Image.asset(
                walletImage,
                height: 45,
                width: 45,
              ),
            ),
            Container(
              margin:
                  const EdgeInsets.only(left: 10),
              child: Text(
                walletName,
                style: const TextStyle(
                  fontFamily: "Montserrat",
                  fontSize: 17.03,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff000000),
                  height: 22 / 17.03,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ]),
          Row(
            children: [
              Text("₹$walletBalance"),
              const SizedBox(
                width: 5,
              ),
              const Icon(Icons.circle_outlined),
            ],
          )
        ],
      ),
    );
  }

  upiCard(String upiName, String upiImage) {
    return Container(
      height: 60,
      // width: 45,
      margin: const EdgeInsets.only(
          left: 10, right: 20),
      child: Row(
        mainAxisAlignment:
            MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius:
                      const BorderRadius.all(
                          Radius.circular(6)),
                  border: Border.all(
                      width: 1,
                      color:
                          Colors.grey.shade300)),
              child: Image.asset(
                upiImage,
                height: 40,
                width: 40,
              ),
            ),
            Container(
              margin:
                  const EdgeInsets.only(left: 10),
              child: Text(
                upiName,
                style: const TextStyle(
                  fontFamily: "Montserrat",
                  fontSize: 17.03,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff000000),
                  height: 22 / 17.03,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ]),
          const Icon(Icons.circle_outlined)
        ],
      ),
    );
  }

  topBar(double productPrice) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(
            top: 15,
          ),
          child: Row(
            mainAxisAlignment:
                MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: IconButton(onPressed: () {
                  Get.back();
                }, icon: Icon(Icons.arrow_back, size: 20,)),
              ),
              Container(
                margin: const EdgeInsets.only(
                    left: 20),
                child: const Text(
                  "Payments",
                  style: TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 20.026634216308594,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff000000),
                    height:
                        22 / 17.026634216308594,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            left: 50,
          ),
          child: Row(
            children: [
              const Text(
                "5 items",
                style: TextStyle(
                  fontFamily: "Montserrat",
                  fontSize: 12.769975662231445,
                  fontWeight: FontWeight.w300,
                  color: Color(0xff000000),
                  height: 22 / 12.769975662231445,
                ),
                textAlign: TextAlign.center,
              ),
              Container(
                margin: const EdgeInsets.only(
                    left: 10),
                child: Text(
                  "Total Amount: ₹${productPrice.toString()}",
                  style: const TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 12.769975662231445,
                    fontWeight: FontWeight.w300,
                    color: Color(0xff000000),
                    height:
                        22 / 12.769975662231445,
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                    left: 10),
                child: const Text(
                  "Savings: ₹99",
                  style: TextStyle(
                    fontSize: 12.769975662231445,
                    fontFamily: "Montserrat",
                    color: Color(0xff1ca672),
                    height:
                        22 / 12.769975662231445,
                  ),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
