import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  Details ({Key? key, required this.informasiKaryawan, required this.informasiNIK, required this.informasiAlias}) : super(key: key);

  String informasiKaryawan;
  String informasiNIK;
  String informasiAlias;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 174, 0, 0),
        title: Text(informasiKaryawan),
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back_ios_outlined)),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            ListTile(
              leading: const Icon(Icons.people),
              title: Text(informasiKaryawan),
              subtitle: Text(informasiNIK),
            ),
          ],
        ),
      )
    );
  }
}