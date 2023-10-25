import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';

class CouponAndRewards extends StatelessWidget {

  CouponAndRewards({super.key});

  List<UserCoupon> users = [
    UserCoupon(title: "10% Off On All Courses",
        couponcode: "DICO10OF"),
    UserCoupon(
        title: "20% Off On Programming Courses",
        couponcode: "PRCO10OF"),
    UserCoupon(
        title: "18% Off On Digital Marketing Courses",
        couponcode: "DIMA18OF"),
    UserCoupon(title: "19% Off On Upi Purchases",
        couponcode: "UPPU19OF"),
    UserCoupon(
        title: "15% OFF On Stationary Books",
        couponcode: "STOFF15"),
    UserCoupon(
        title: "20% OFF On Stationary Pens",
        couponcode: "STOFF20"),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              size: 18,
            )),
        title: const Text("Coupons And Rewards"),
      ),
      body: Column(
        children: [

          ListView.builder(
            physics: const RangeMaintainingScrollPhysics(),
            itemCount: users.length,
            shrinkWrap: true,
            itemBuilder: (context, index) =>
                ListTile(
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius
                        .circular(1),
                    side: const BorderSide(
                        color: Color(0xFF93C6ED),
                        width: 1),),
                  contentPadding: const EdgeInsets
                      .symmetric(vertical: 7,
                      horizontal: 15),

                  title: Text(
                    users[index].title.toString(),
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight
                            .w600,
                        color: Color(0xFF07134F)),
                    maxLines: 3,
                  ),
                  trailing: InkWell(
                    onTap: () async {
                      await Clipboard.setData(
                          ClipboardData(
                            text: users[index]
                                .couponcode
                                .toString(),));
                      final snackBar =
                      SnackBar(
                        duration: const Duration(
                            seconds: 2),
                        content: const Text(
                          'Coupon Copied',
                          style: TextStyle(
                              fontSize: 13,
                              color: Color(
                                  0xFF000000)
                          ),
                        ),
                        backgroundColor:
                        (const Color(
                            0xFFFFFFFF)),
                        action:
                        SnackBarAction(

                          label: users[index]
                              .couponcode
                              .toString(),

                          onPressed: () {},
                        ),
                      );
                      ScaffoldMessenger.of(
                          context)
                          .showSnackBar(
                          snackBar);
                    },
                    child: Container(
                        color: const Color(
                            0xFFD3CECE),
                        padding: const EdgeInsets
                            .symmetric(
                            horizontal: 10,
                            vertical: 5),
                        child: Text(
                          users[index].couponcode
                              .toString(),
                          style: const TextStyle(
                              fontWeight: FontWeight
                                  .w600),
                        )),
                  ),
                ),),
          const Text(
            "Click on Coupon Code to copy on Clickboard",

            style: TextStyle(fontSize: 13,
                fontWeight: FontWeight.w300,
                decoration: TextDecoration
                    .underline,
                decorationThickness: 1
            ),),
        ],
      ),
    );
  }
}

class UserCoupon {
  String title, couponcode;

  UserCoupon(
      {required this.title, required this.couponcode});
}