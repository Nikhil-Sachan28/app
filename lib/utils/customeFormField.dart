import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomFormField extends StatelessWidget {
  CustomFormField({
    Key? key,
    required this.hintText,
    this.inputFormatters,
    this.validator,
    required this.controller
  }) : super(key: key);
  final String hintText;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        inputFormatters: inputFormatters,
        validator: validator,
        controller: controller,

        // decoration: InputDecoration(hintText: hintText),
        decoration: InputDecoration(
          hintText: hintText,
          labelText: hintText,

          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: Colors.grey,
            ), //<-- SEE HERE
          ),

          errorBorder: const OutlineInputBorder( //<-- SEE HERE
            borderSide: BorderSide(
                width: 2, color: Colors.redAccent),
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(
                width: 2, color: Colors.greenAccent), //<-- SEE HERE
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
                width: 2, color: Colors.greenAccent), //<-- SEE HERE
          ),
        ),
      ),
    );
  }
}