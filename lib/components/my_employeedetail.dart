// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:sampurnagroupmobile/components/my_bottombar.dart';

class EmployeeDetail extends StatelessWidget {
  final assetPath, occupationemployee, employeename;

  const EmployeeDetail({super.key, this.assetPath, this.occupationemployee, this.employeename});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF545D68)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        // title: const Text('Pickup',
        //     style: TextStyle(
        //         fontFamily: 'Nexa',
        //         fontSize: 20.0,
        //         color: Color(0xFF545D68))),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notifications_none, color: Color(0xFF545D68)),
            onPressed: () {},
          ),
        ],
      ),

      body: ListView(
        children: [
          const SizedBox(height: 15.0),
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              'Employee',
              style: TextStyle(
                      fontFamily: 'Nexa',
                      fontSize: 42.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0))
            ),
          ),
            const SizedBox(height: 15.0),
            Hero(
              tag: assetPath,
              child: Image.asset(assetPath,
              height: 150.0,
              width: 100.0,
              fit: BoxFit.contain
              )
            ),
            const SizedBox(height: 20.0),
            Center(
              child: Text(occupationemployee,
                  style: const TextStyle(
                      fontFamily: 'Nexa',
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0))),
            ),
            const SizedBox(height: 10.0),
            Center(
              child: Text(employeename,
                  style: const TextStyle(
                      color: Color(0xFF575E67),
                      fontFamily: 'Nexa',
                      fontSize: 24.0)),
            ),
            const SizedBox(height: 20.0),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width - 50.0,
                child: const Text('',
                textAlign: TextAlign.center,
                style: TextStyle(
                      fontFamily: 'Nexa',
                      fontSize: 16.0,
                      color: Color(0xFFB4B8B9))
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width - 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: const Color.fromARGB(255, 0, 0, 0)
                ),
                child: const Center(
                  child: Text('Edit',
                    style: TextStyle(
                      fontFamily: 'Nexa',
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                ),
                  )
                )
              )
            )
        ]
      ),

      floatingActionButton: FloatingActionButton(onPressed: () {},
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      child: const Icon(Icons.fastfood),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const BottomBar(),
    );
  }
}