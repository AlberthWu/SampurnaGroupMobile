import 'package:flutter/material.dart';
import 'package:sampurnagroupmobile/constants.dart';

class MyTextField extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final controller;
  final String hintText;
  final bool obscureText;

  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromARGB(255, 187, 187, 187)),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Constants.buttonColor),
            ),
            // fillColor: Colors.grey.shade200,
            // filled: true,
            hintText: hintText,
            hintStyle: TextStyle(fontSize: 13, color: Colors.grey[500])),
      ),
    );
  }
}