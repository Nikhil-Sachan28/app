import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsearch/Screens/notification/notificationBar.dart';
import 'messagePage.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key})
      : super(key: key);

  @override
  State<NotificationPage> createState() =>
      _NotificationPageState();
}

List<Widget> topViewList = [
  const Message(),
  const NotificationScreen(),
];
var indexvalue = 1;

class _NotificationPageState
    extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(
            left: 15, right: 15),
        child: Column(
            mainAxisAlignment:
                MainAxisAlignment.start,
            children: [
              topBar(),
              topViewList[indexvalue],
            ]),
      ),
    );
  }

  Widget topBar() {
    return SizedBox(

      child: Column(children: [
        SafeArea(
            child: Align(
          alignment: Alignment.centerRight,
          widthFactor: 12,
          child: InkWell(
            onTap: () => Get.back(),
            child: const Icon(
              Icons.cancel_outlined,
              size: 25,
            ),
          ),
        )),
        const SizedBox(
          height: 15,
        ),
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Notifications",
            style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: Color(0xff1f1f39),
              height: 36 / 24,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        tabBar()
      ]),
    );
  }

  Widget tabBar() {
    return Center(
        child: Container(
      width: Get.width * 0.9,
      height: Get.height * 0.09,
      padding: const EdgeInsets.symmetric(
          horizontal: 4, vertical: 4),
      child: DefaultTabController(
        length: 2,
        child: TabBar(
            onTap: (index) => setState(() {
                  indexvalue = index;
                }),
            labelColor: Colors.black,
            unselectedLabelColor: Colors.black,
            indicator:
                const UnderlineTabIndicator(
              borderSide: BorderSide(
                  width: 3.0,
                  color: Colors.blueAccent),
              insets: EdgeInsets.symmetric(
                  horizontal: 55.0, vertical: 5),
            ),
            indicatorSize:
                TabBarIndicatorSize.tab,
            tabs: [
              const Tab(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "message",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff1f1f39),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              Tab(
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.center,
                  children: [
                    const Align(
                      alignment: Alignment.center,
                      child: Text(
                        "notification",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 16,
                          fontWeight:
                              FontWeight.w500,
                          color:
                              Color(0xff1f1f39),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Align(
                      alignment:
                          Alignment.topRight,
                      child: Container(
                        margin:
                            const EdgeInsets.only(
                                top: 5),
                        height: 7,
                        width: 7,
                        decoration: BoxDecoration(
                            color:
                                Colors.deepOrange,
                            borderRadius:
                                BorderRadius
                                    .circular(
                                        50)),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
      ),
    ));
  }
}
