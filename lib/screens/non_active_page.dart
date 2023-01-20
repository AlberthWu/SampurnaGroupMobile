import 'package:flutter/material.dart';
import 'package:sampurnagroupmobile/constants.dart';
import 'package:sampurnagroupmobile/models/employ.dart';
import 'package:sampurnagroupmobile/screens/employee_widget.dart';

class NonActivePage extends StatefulWidget {
  final List<Employee> nonActiveEmploy;
  const NonActivePage({Key? key, required this.nonActiveEmploy}) : super(key: key);

  @override
  State<NonActivePage> createState() => _NonActivePageState();
}

class _NonActivePageState extends State<NonActivePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: widget.nonActiveEmploy.isEmpty
          ? Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
              child: Image.asset('assets/images/attendance.png'),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Your Non Active Employee is Empty',
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
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
        height: size.height,
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: widget.nonActiveEmploy.length,
                  scrollDirection: Axis.vertical,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return EmployWidget(
                        index: index, employeeList: widget.nonActiveEmploy);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}