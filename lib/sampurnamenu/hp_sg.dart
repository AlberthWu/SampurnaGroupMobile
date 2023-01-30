import 'package:flutter/material.dart';
import 'package:sampurnagroupmobile/onboarding_screen.dart';
import 'package:sampurnagroupmobile/sampurnamenu/menus.dart';
import 'package:sampurnagroupmobile/constants.dart';

class FinalHome extends StatelessWidget {
  const FinalHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Constants.primaryColor,
          elevation: 0,
          toolbarHeight: 70,
          ),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [Menus()],
      )),
    );
  }
}
