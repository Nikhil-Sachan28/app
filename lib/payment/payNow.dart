import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsearch/Configs/Constants.dart';

class PayNow extends StatefulWidget {
  const PayNow({Key? key}) : super(key: key);

  @override
  State<PayNow> createState() => _PayNowState();
}

class _PayNowState extends State<PayNow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: InkWell(
          onTap: () => Get.back(),
          child: const Icon(
            Icons.cancel,
            color: Colors.black,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.more_vert_rounded,
              color: Colors.black,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      body: Container(
        width: Get.width * 1,
        margin: EdgeInsets.only(
            top: Get.height * 0.04),
        child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.center,
            mainAxisAlignment:
                MainAxisAlignment.start,
            children: [
              Container(
                height: Get.width * 0.25,
                width: Get.width * 0.25,
                decoration: BoxDecoration(
                  border: Border.all(
                      width: 1,
                      color: Colors.black26),
                  borderRadius:
                      const BorderRadius.all(
                    Radius.circular(100),
                  ),
                ),
                child: Center(
                  child: Container(
                    height: Get.width * 0.18,
                    width: Get.width * 0.18,
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius
                                .all(
                          Radius.circular(100),
                        ),
                        border: Border.all(
                            width: 3,
                            color:
                                Colors.black12),
                        image:
                            const DecorationImage(
                                image: AssetImage(
                                  'assets/phonepe.png',
                                ),
                                fit: BoxFit
                                    .contain)),
                  ),
                ),
              ),
              payingTo(),
              totalAmount(),
              orderId()
            ]),
      ),
    );
  }

  orderId() {
    return Container(
      height: Get.height * 0.07,
      width: Get.width * 0.75,
      decoration: BoxDecoration(
          color: const Color(0xFFE8F0FE),
          borderRadius:
              BorderRadius.circular(10)),
      child: const Center(
        child: Text(
          "${Constants.CompanyName} Order Id 151091256777",
          style: TextStyle(
            fontFamily: "Avenir Next",
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Color(0xff393d40),
            height: 22 / 17.03,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  totalAmount() {
    return const Text(
      "₹299.00",
      style: TextStyle(
        fontFamily: "Avenir Next",
        fontSize: 45,
        fontWeight: FontWeight.w500,
        color: Color(0xff35393c),
        height: 78 / 57.46488952636719,
      ),
      textAlign: TextAlign.center,
    );
  }

  payingTo() {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.center,
        children: [
          Text(
            "Paying ${Constants.CompanyName}",
            style: TextStyle(
              fontFamily: "Avenir Next",
              fontSize: 17,
              fontWeight: FontWeight.w500,
              color: Color(0xff35393c),
              height: 22 / 19.2,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            "doordashupi@axisbank",
            style: TextStyle(
              fontFamily: "Avenir Next",
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: Color(0xff35393c),
              height: 22 / 17.026634216308594,
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
