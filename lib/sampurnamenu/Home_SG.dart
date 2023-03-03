import 'package:flutter/material.dart';
import 'package:sampurnagroupmobile/constants.dart';
import 'package:sampurnagroupmobile/Final_Menu/menu.dart';
import 'package:sampurnagroupmobile/sampurnamenu/saldocuti.dart';

class HomeSG extends StatelessWidget {
  const HomeSG({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Constants.primaryColor,
          elevation: 0,
          toolbarHeight: 71,
      ),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [Menu(), SaldoCuti()],
      )),
    );
  }
}