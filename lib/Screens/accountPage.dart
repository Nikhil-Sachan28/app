import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobsearch/Accounts/cv_wallet.dart';
import 'package:jobsearch/Accounts/Menu/menu_page.dart';
import 'package:jobsearch/Accounts/notification_setting_page.dart';
import 'package:jobsearch/Components/accountCells.dart';

import '../Accounts/address_page.dart';
import 'Authentication/editProfilePage.dart';
import '../Accounts/favourite_page.dart';
import '../Accounts/help_page.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            topSection(),
            AccountCells(
              text: 'Edit Profiles',
              onTap: EditProfilePage(),
            ),
            AccountCells(
              text: 'CV wallet',
              onTap: CvWalletPage(),
            ),
            AccountCells(
              text: 'Download',
              onTap: EditProfilePage(),
            ),
            AccountCells(
              text: 'Menu',
              onTap: const MenuPage(),
            ),
            AccountCells(
              text: 'Shipping Address',
              onTap: const AddressPage(),
            ),
            AccountCells(
                text: 'Favourite',
                onTap: Favourite()),
            AccountCells(
              text: 'Notifications Setting',
              onTap: const NotificationSetting(),
            ),
            // AccountCells(
            //     text: 'Settings and Privacy',
            //     onTap: EditProfilePage()),
            AccountCells(
                text: 'Help',
                onTap: const HelpPage()),
          ],
        ),
      ),
    );
  }
}

// Top section widget
Widget topSection() {
  return SizedBox(
    height: Get.height * 0.32,
    child: Stack(children: [
      Align(
          alignment: Alignment.topCenter,
          child: Container(
            height: Get.height * 0.25,
            color: const Color(0xFF2630AA),
          )),
      Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: Get.height * 0.15,
            margin:
                const EdgeInsets.only(bottom: 20),
            width: Get.width * 0.35,
            child: Stack(children: [
              // Align(
              //     alignment: Alignment.topRight,
              //     child: Icon(
              //       Icons.camera_alt,
              //       color: Colors.white,
              //     )),
              Align(
                  alignment:
                      Alignment.bottomCenter,
                  child: SvgPicture.asset(
                      'assets/avatar.svg'))
            ]),
          ))
    ]),
  );
}

// Cells widget
