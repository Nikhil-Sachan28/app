import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:group_button/group_button.dart';
class OpportunityApply extends StatefulWidget {
  OpportunityApply({super.key});

  @override
  State<OpportunityApply> createState() => _OpportunityApplyState();
}
String gender = "male";

class _OpportunityApplyState extends State<OpportunityApply> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Theme.of(context)
          .scaffoldBackgroundColor,
      elevation: 1,
      centerTitle: true,
      title: const Text(
        "Product Manager",
        style: TextStyle(

            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          buildTextField("Email*", "Email",),
          buildTextField("Mobile*", "099876545432",),
          buildTextField("First Name*", "Devesh",),
          buildTextField("Last Name (if applicable)*", "Khatuwal",),
          _genderSelect(),
              _typeSelect(),
              _diffrentlyAbledSelect(),
              buildTextField("Country of Origin *", "India", isEnabled: false),



        ]),
      ),
      bottomNavigationBar:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
        child: TextButton(
            style: ButtonStyle(shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))), padding: const MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 40, vertical: 10)), backgroundColor: const MaterialStatePropertyAll(Color(0xFF0073E6))),
            onPressed: () {Get.to(OpportunityApply());},
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 100.0, ),
              child: Text(
                "Apply",
                style: TextStyle(
                  fontFamily: "Quicksand",
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFFFFFFFF),
                ),
                textAlign: TextAlign.center,
              ),
            )),
      ),
    );
  }
  Widget buildTextField(
      String labelText,
      String placeholder,
  {bool isEnabled = true}
     ) {
    return Padding(
      padding: const EdgeInsets.only(
          bottom: 5.0, right: 10, left: 10, top: 15),
      child: TextField(

        decoration: InputDecoration(
         enabled: isEnabled,
border: OutlineInputBorder(borderSide: BorderSide(width: 0.5)),
            contentPadding:
            const EdgeInsets.only(bottom: 3),

            labelText: "  $labelText",
            floatingLabelBehavior:
            FloatingLabelBehavior.always,
            hintText:  "  $placeholder",
            labelStyle: TextStyle(fontSize: 20, color: Color(0xFF002C87),
            fontWeight: FontWeight.w500
            ),
            hintStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            )),
      ),
    );
  }
  _genderSelect(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Gender *",
            style: TextStyle(
              fontFamily: "Quicksand",
              fontSize: 17,
              fontWeight: FontWeight.w500,
              color: Color(0xFF000000),
              height: 3
            ),
            textAlign: TextAlign.start,
          ),
          GroupButton(

            isRadio: true,
            onSelected: (value, index, isSelected) {

            },
            buttons: ["Male", "Female", "Others",],
          ),
        ],
      ),
    );
  }
  _typeSelect(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Type *",
            style: TextStyle(
              fontFamily: "Quicksand",
              fontSize: 17,
              fontWeight: FontWeight.w500,
              color: Color(0xFF000000),
              height: 3
            ),
            textAlign: TextAlign.start,
          ),
          GroupButton(

            isRadio: true,
            onSelected: (value, index, isSelected) {

            },
            buttons: ["College Students", "Professional", "School Students", "Fresher","Other"],
          ),
        ],
      ),
    );
  }
  _diffrentlyAbledSelect(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Differnently Abled *",
            style: TextStyle(
              fontFamily: "Quicksand",
              fontSize: 17,
              fontWeight: FontWeight.w500,
              color: Color(0xFF000000),
              height: 3
            ),
            textAlign: TextAlign.start,
          ),
          GroupButton(

            isRadio: true,
            onSelected: (value, index, isSelected) {

            },
            buttons: ["No", "Yes"],
          ),
        ],
      ),
    );
  }
}
