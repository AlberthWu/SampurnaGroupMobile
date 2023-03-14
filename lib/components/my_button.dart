import 'package:flutter/material.dart';
import 'package:sampurnagroupmobile/Final_Menu/_profile.dart';
import 'package:sampurnagroupmobile/constants.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;

  const MyButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context, 
          MaterialPageRoute(
            builder: (context){
              return Profile();
            },
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: Constants.primaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Center(
          child: Text(
            "Ganti Kata Sandi",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}