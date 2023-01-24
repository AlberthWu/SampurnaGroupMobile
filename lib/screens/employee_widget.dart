import 'package:flutter/material.dart';
import 'package:sampurnagroupmobile/constants.dart';
import 'package:sampurnagroupmobile/models/employ.dart';
import 'package:sampurnagroupmobile/screens/detail_page.dart';

import 'package:page_transition/page_transition.dart';

class EmployWidget extends StatelessWidget {
  const EmployWidget({
    Key? key, required this.index, required this.employeeList,
  }) : super(key: key);

  final int index;
  final List<Employee> employeeList;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            PageTransition(
                child: DetailPage(
                  employId: employeeList[index].employId,
                ),
                type: PageTransitionType.bottomToTop));
      },
      child: Container(
        decoration: BoxDecoration(
          color: Constants.secondaryColor.withOpacity(.1),
          borderRadius: BorderRadius.circular(10),
        ),
        height: 55.0,
        padding: const EdgeInsets.only(left: 10, top: 5, bottom: 5),
        margin: const EdgeInsets.only(bottom: 10, top: 5),
        width: size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: Constants.primaryColor.withOpacity(.8),
                    shape: BoxShape.circle,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: SizedBox(
                    height: 40.0,
                    child:
                    Image.asset(employeeList[index].imageURL),
                  ),
                ),
                Positioned(
                  top: -3,
                  bottom: -10,
                  left: 50,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(employeeList[index].category),
                      Text(
                        employeeList[index].employeeName,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Constants.blackColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // Container(
            //   padding: const EdgeInsets.only(right: 15),
            //   child: Text(
            //     r'$' + plantList[index].price.toString(),
            //     style: TextStyle(
            //       fontWeight: FontWeight.bold,
            //       fontSize: 18.0,
            //       color: Constants.primaryColor,
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}