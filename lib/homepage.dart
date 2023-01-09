import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:sampurnagroupmobile/pallete_login.dart';

class Homepage extends StatefulWidget {
  const Homepage({ Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomePageState();
}

class _HomePageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(213, 255, 255, 255),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Pallete.backgroundColor,
        color: Color.fromARGB(255, 255, 255, 255),
        animationDuration: const Duration(milliseconds: 300),
        onTap: (index){
          // ignore: avoid_print
          print(index);
        },
        items: const [
          Icon(
            Icons.work_outline,
            color: Pallete.iconColor,
          ),
          Icon(
            Icons.payment_outlined, 
            color: Pallete.iconColor,
          ),
          Icon(
            Icons.home_outlined, 
            color: Pallete.iconColor,
          ),
          Icon(
            Icons.payments_outlined, 
            color: Pallete.iconColor,
          ),
          Icon(
            Icons.person_outline, 
            color: Pallete.iconColor,
          ), 
        ],
      ),
    );
  }
}