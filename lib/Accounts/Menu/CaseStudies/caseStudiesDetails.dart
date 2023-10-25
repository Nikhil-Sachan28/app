import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CaseStudiesDetails extends StatelessWidget {
  const CaseStudiesDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Case Studies",
          style: TextStyle(
              color: Colors.black, fontSize: 22, fontWeight: FontWeight.w600),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 20,
          ),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            const Divider(
              height: 20,
              thickness: 1,
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 4,
                        color: Theme.of(context).scaffoldBackgroundColor),
                    boxShadow: [
                      BoxShadow(
                          spreadRadius: 2,
                          blurRadius: 10,
                          color: Colors.black.withOpacity(0.1),
                          offset: const Offset(0, 10))
                    ],
                    shape: BoxShape.circle,
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          "https://imgs.search.brave.com/arVr0UkKZ-lrulGOXt63NSw8fjhuIHTSF-YxKBSbeWY/rs:fit:500:0:0/g:ce/aHR0cHM6Ly93YWxs/cGFwZXJjYXZlLmNv/bS93cC93cDc3NzEx/OTMuanBn"
                                   ))),
              ),
            ),
            const Text(
              "Amazon.com, Ltd.",
              style: TextStyle(
                fontFamily: "Nunito",
                fontSize: 20,
                fontWeight: FontWeight.w600,
                height: 3.0,
                color: Color(0xFF101010),
              ),
              textAlign: TextAlign.center,
            ),
            const Text(
              "By : " "Job Finder Admin",
              style: TextStyle(
                fontFamily: "Nunito",
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: Color(0xFF101010),
              ),
              textAlign: TextAlign.center,
            ),
            const Divider(
              height: 10,
              thickness: 1,
            ),
            SizedBox(width: Get.width * 1
              ,child: CachedNetworkImage(imageUrl: "https://imgs.search.brave.com/fYcE_cb0Bo3SeGtr790xndDW2_5xZQrNnsVMBEyu78s/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTI0/MTAxNDA0MC9waG90/by9ub3J0aC1sYXMt/dmVnYXMtbmV2YWRh/LXVuaXRlZC1zdGF0/ZXMtYW4tYW1hem9u/LWxvZ28taXMtZGlz/cGxheWVkLW9uLWEt/ZnVsZmlsbG1lbnQt/Y2VudGVyLmpwZz9z/PTYxMng2MTImdz0w/Jms9MjAmYz1LbUE4/d3FXWUVkclpYS2Zw/UmUxZF9wZml2T1ZF/TGd0SWJkSlZ4a2lW/emNnPQ"),),
            const Divider(
              height: 10,
              thickness: 1,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Text(
                "On May 15, 2017, Amazon.com celebrated the 20th anniversary of its initial public offering (IPO). The company’s first twenty years was a period of remarkable growth but with very little to show in terms of accounting earnings. This reflected Amazon’s strategy of investing in expansion and research and development with the idea that sacrificing profitability in the short-term would allow the company to create value over the long-term. Relatedly, and perhaps not surprisingly, Amazon’s voluntary non-GAAP disclosures emphasized cash flow performance measures, not accounting earnings. Students are asked to contemplate potential pathways to dramatically higher profitability for Amazon.",
                style: TextStyle(
                  fontFamily: "Quicksand",
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff2d2d2d),
                ),
                textAlign: TextAlign.start,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
