import 'package:flutter/material.dart';

import 'package:sampurnagroupmobile/constants.dart';
import 'package:sampurnagroupmobile/models/employ.dart';
import 'package:sampurnagroupmobile/screens/employee_widget.dart';

class ActivatedPage extends StatefulWidget {
  final List<Employee> activatedEmploy;
  const ActivatedPage({Key? key, required this.activatedEmploy})
      : super(key: key);

  @override
  State<ActivatedPage> createState() => _ActivatedPageState();
}

class _ActivatedPageState extends State<ActivatedPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: widget.activatedEmploy.isEmpty
          ? Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                    child: Image.asset('assets/images/favorited.png'),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Your Activated Employee',
                    style: TextStyle(
                      color: Constants.primaryColor,
                      fontWeight: FontWeight.w300,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            )
          : Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 30),
              height: size.height * .5,
              child: ListView.builder(
                  itemCount: widget.activatedEmploy.length,
                  scrollDirection: Axis.vertical,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return EmployWidget(
                        index: index, employeeList: widget.activatedEmploy);
                  }),
            ),
    );
  }
}