import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsearch/Accounts/Menu/Careers/opportunityDetailPage.dart';
import 'package:jobsearch/Configs/Constants.dart';
class OpportunityListView extends StatefulWidget {
 int listtype;
  OpportunityListView({super.key, this.listtype = 1});

  @override
  State<OpportunityListView> createState() => _OpportunityListViewState();
}
List<String> jobName = [ "Product Manager", "Application Developer", "Web Developer",
  "Graphic Designer", "UI Designer" , "UX Designer", "Store Manager"
];
List<String> internship = [  "Application Developer", "Web Developer",
"Graphic Designer", "UI Designer" , "UX Designer",
];
List<String> allOpportunity = List.from(jobName)..addAll(internship);


_listtype(int listint){
  if(listint == 1){
    return allOpportunity;
  }
  else if(listint == 2){
    return jobName;
  }
  else {
    return internship;
  }
}
class _OpportunityListViewState extends State<OpportunityListView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListView.builder(
            physics: const RangeMaintainingScrollPhysics(),
          scrollDirection: Axis.vertical,
          reverse: false,
          shrinkWrap: true,
          itemCount: _listtype(widget.listtype).length,
          itemBuilder: (context, index) =>
            InkWell(
              onTap: () => Get.to(const OpportunityDetailPage()),
              child: Card(

                elevation: 1,
                child: ListTile(

                  contentPadding: const EdgeInsets.symmetric(horizontal: 20,
                      vertical: 10),
                title: Text(
                 _listtype(widget.listtype)[index],
                  style: const TextStyle(
                    fontFamily: "Avenir Next",
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF000000),
                  ),
                  textAlign: TextAlign.start,
                ),
                  trailing: const CircleAvatar(
                      backgroundColor: Color(0xFFDED1D1),
                      child: Icon(Icons.arrow_forward, color: Color(0xFF000000),)),
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: const Color(0xFF9CE1EC),
                borderRadius: BorderRadius.circular(15)),
            margin: const EdgeInsets.only(bottom: 20, left: 20 , right: 20),
         padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            width: Get.width * 7,
            
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Don't see any relevant opening",
                style: TextStyle(
                fontFamily: "Avenir Next",
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Color(0xFF000000),

              ),
              textAlign: TextAlign.start,
              ),
              const SizedBox(height: 10,),
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: "Mail us at ",
                      style: TextStyle(
                        fontFamily: "Avenir Next",
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF000000),

                      ),
                    ),
                    TextSpan(
                      text: Constants.CareerMail,
                      style: TextStyle(
                        fontFamily: "Avenir Next",
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF365BEF),

                      ),
                    ),
                    TextSpan(
                      text: " with the profile name as the subject. (Example: Applying for Android Developer role.)",
                      style: TextStyle(
                        fontFamily: "Avenir Next",
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF000000),

                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
          )
        ],
      ),
    );
  }
}
