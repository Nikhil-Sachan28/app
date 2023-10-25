// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsearch/Accounts/Profile/ForUsers/couponRewards.dart';
import 'package:jobsearch/Accounts/Profile/ForUsers/recentViewed.dart';
import 'package:jobsearch/Accounts/favourite_page.dart';
import 'package:jobsearch/Screens/Authentication/editProfilePage.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);
  int progress = 87;
  String name = "Devesh";
  String email = "devesh@gmail.com";

  _profileprogress() {
    return Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [
          const Text(
            "Complete your Profile",
            style: TextStyle(
              fontFamily: "Quicksand",
              fontSize: 12,
              fontWeight: FontWeight.w700,
              color: Color(0xff29367c),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 6,
          ),
          SizedBox(
            width: Get.width * 0.95,
            child: Row(
              crossAxisAlignment:
                  CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(
                        right: 5),

                    // height: 12,
                    decoration:
                        const BoxDecoration(
                            borderRadius:
                                BorderRadius.all(
                                    Radius
                                        .circular(
                                            10))),
                    child:
                        LinearProgressIndicator(
                      backgroundColor:
                          const Color(0xFFAEC6D9),
                      value: progress / 100,
                      color:
                          const Color(0xFF0287CF),
                    ),
                  ),
                ),
                Text(
                  "$progress%",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontFamily: "Quicksand",
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF547290),
                  ),
                ),
              ],
            ),
          )
        ]);
  }

  _profile() {
    return Column(
      children: [
        const Divider(
          height: 20,
          thickness: 2,
          color: Colors.black12,
        ),
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: CircleAvatar(
              radius: 40, child: Text(name[0])),
          title: Text(
            name,
            style: const TextStyle(
              fontFamily: "Quicksand",
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Color(0xff000000),
            ),
            textAlign: TextAlign.left,
          ),
          subtitle: Text(
            email,
            style: const TextStyle(
              fontFamily: "Quicksand",
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color(0xff000000),
            ),
            textAlign: TextAlign.left,
          ),
        ),
        IntrinsicHeight(
          child: Row(
            children: [
              Expanded(
                  child: TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.bar_chart,
                        color: Color(0xFF87A77E),
                      ),
                      label: const Text(
                        "NA",
                        style: TextStyle(
                          fontFamily: "Quicksand",
                          fontSize: 14,
                          fontWeight:
                              FontWeight.w700,
                          color:
                              Color(0xff2d2d2d),
                        ),
                        textAlign:
                            TextAlign.center,
                      ))),
              const VerticalDivider(
                thickness: 2,
              ),
              Expanded(
                  child: TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.star,
                        color: Color(0xFF817FEC),
                      ),
                      label: const Text(
                        "2",
                        style: TextStyle(
                          fontFamily: "Quicksand",
                          fontSize: 15,
                          fontWeight:
                              FontWeight.w700,
                          color:
                              Color(0xff2d2d2d),
                        ),
                        textAlign:
                            TextAlign.center,
                      ))),
              const VerticalDivider(
                thickness: 1,
              ),
              Expanded(
                  child: TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.currency_rupee,
                        color: Color(0xFFFEC947),
                      ),
                      label: const Text(
                        "335",
                        style: TextStyle(
                          fontFamily: "Quicksand",
                          fontSize: 15,
                          fontWeight:
                              FontWeight.w700,
                          color:
                              Color(0xff2d2d2d),
                        ),
                        textAlign:
                            TextAlign.center,
                      ))),
            ],
          ),
        ),
        SizedBox(
          width: Get.width * 7,
          child: TextButton(
              style: ButtonStyle(
                  shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius
                                  .circular(10))),
                  backgroundColor:
                      const MaterialStatePropertyAll(
                          Color(0xFFFFBAEC))),
              onPressed: () {
                Get.to(const EditProfilePage());
              },
              child: const Text(
                "Complete Profile",
                style: TextStyle(
                  fontFamily: "Quicksand",
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF335482),
                ),
                textAlign: TextAlign.center,
              )),
        )
      ],
    );
  }

  _foruser() {
    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
              vertical: 5, horizontal: 15),
          width: Get.width * 1,
          color: const Color(0xFFEFE5E5),
          child: const Text(
            "For Users",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 15,
                color: Color(0xFF517096)),
          ),
        ),
        TextButton.icon(
            onPressed: () {
              Get.to(Favourite(
                isWatchList: true,
              ));
            },
            icon: const Icon(
              Icons.favorite_border_outlined,
              color: Color(0xFF204A70),
            ),
            label: const Text(
              'WatchList',
              style: TextStyle(
                  color: Color(0xFF204A70)),
            )),
        TextButton.icon(
            onPressed: () {
              Get.to(RecentViewed());
            },
            icon: const Icon(
              Icons
                  .settings_backup_restore_outlined,
              color: Color(0xFF204A70),
            ),
            label: const Text(
              'Recent Viewed',
              style: TextStyle(
                  color: Color(0xFF204A70)),
            )),
        TextButton.icon(
            onPressed: () {},
            icon: const Icon(
              Icons.book_outlined,
              color: Color(0xFF204A70),
            ),
            label: const Text(
              'Courses',
              style: TextStyle(
                  color: Color(0xFF204A70)),
            )),
        TextButton.icon(
            onPressed: () {},
            icon: const Icon(
              Icons.newspaper_outlined,
              color: Color(0xFF204A70),
            ),
            label: const Text(
              'Certificates',
              style: TextStyle(
                  color: Color(0xFF204A70)),
            )),
        TextButton.icon(
            onPressed: () {},
            icon: const Icon(
              Icons.face_outlined,
              color: Color(0xFF204A70),
            ),
            label: const Text(
              'Mentor Sessions',
              style: TextStyle(
                  color: Color(0xFF204A70)),
            )),
        TextButton.icon(
            onPressed: () {
              Get.to(CouponAndRewards());
            },
            icon: const Icon(
              Icons.menu_book,
              color: Color(0xFF204A70),
            ),
            label: const Text(
              'Coupons and Rewards',
              style: TextStyle(
                  color: Color(0xFF204A70)),
            )),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: const Color(0xffffffff),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
          onPressed: () => Get.back(),
        ),
        centerTitle: true,
        title: const Text(
          "Profile",
          style: TextStyle(
            fontFamily: "Quicksand",
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Color(0xff2d2d2d),
          ),
          textAlign: TextAlign.left,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 15, vertical: 15),
            child: Column(children: [
              _profileprogress(),
              _profile(),
            ]),
          ),
          _foruser(),
          const Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 15.0),
            child: Divider(
              height: 10,
              thickness: 2,
            ),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: Get.width * 0.85,
                child: OutlinedButton.icon(
                    style:
                        OutlinedButton.styleFrom(
                      side: const BorderSide(
                          width: 1.5,
                          color:
                              Color(0xFF495D75)),
                    ),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.login_outlined,
                      color: Color(0xFF3A5677),
                    ),
                    label: const Text(
                      "Log Out",
                      style: TextStyle(
                          color:
                              Color(0xFF3A5677)),
                    )),
              ))
        ]),
      ),
    );
  }
}
