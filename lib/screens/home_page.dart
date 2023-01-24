import 'package:flutter/material.dart';

import 'package:sampurnagroupmobile/constants.dart';
import 'package:sampurnagroupmobile/models/employ.dart';
import 'package:sampurnagroupmobile/screens/detail_page.dart';
import 'package:sampurnagroupmobile/screens/employee_widget.dart';

import 'package:page_transition/page_transition.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    Size size = MediaQuery.of(context).size;

    List<Employee> employeeList = Employee.employeeList;

    //Employee category
    List<String> employeeTypes = [
      'Employee',
    ];

    //Toggle Favorite button
    bool toggleIsActivated(bool isActivated) {
      return !isActivated;
    }

    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14.0, vertical: 2.0,
                  ),
                  width: size.width * .9,
                  decoration: BoxDecoration(
                    color: Constants.secondaryColor.withOpacity(.1),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.black54.withOpacity(.6),
                      ),
                      const Expanded(
                          child: TextField(
                        showCursor: false,
                        decoration: InputDecoration(
                          hintText: 'Search',
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      )),
                      Icon(
                        Icons.mic,
                        color: Colors.black54.withOpacity(.6),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          // Container(
          //   padding: const EdgeInsets.symmetric(horizontal: 10),
          //   height: 45.0,
          //   width: size.width,
          //   child: ListView.builder(
          //       scrollDirection: Axis.horizontal,
          //       itemCount: employeeTypes.length,
          //       itemBuilder: (BuildContext context, int index) {
          //         return Padding(
          //           padding: const EdgeInsets.all(8.0),
          //           child: GestureDetector(
          //             onTap: () {
          //               setState(() {
          //                 selectedIndex = index;
          //               });
          //             },
          //             child: Text(
          //               employeeTypes[index],
          //               style: TextStyle(
          //                 fontSize: 16.0,
          //                 fontWeight: selectedIndex == index
          //                     ? FontWeight.bold
          //                     : FontWeight.w300,
          //                 color: selectedIndex == index
          //                     ? Constants.primaryColor
          //                     : Constants.blackColor,
          //               ),
          //             ),
          //           ),
          //         );
          //       }),
          // ),
          // SizedBox(
          //   height: size.height * .3,
          //   child: ListView.builder(
          //       itemCount: employeeList.length,
          //       scrollDirection: Axis.horizontal,
          //       itemBuilder: (BuildContext context, int index) {
          //         return GestureDetector(
          //           onTap: () {
          //             Navigator.push(
          //                 context,
          //                 PageTransition(
          //                     child: DetailPage(
          //                       employId: employeeList[index].employId,
          //                     ),
          //                     type: PageTransitionType.bottomToTop));
          //           },
          //           child: Container(
          //             width: 200,
          //             margin: const EdgeInsets.symmetric(horizontal: 10),
          //             decoration: BoxDecoration(
          //               color: Constants.primaryColor.withOpacity(.8),
          //               borderRadius: BorderRadius.circular(25),
          //             ),
          //             child: Stack(
          //               children: [
          //                 Positioned(
          //                   top: 10,
          //                   right: 20,
          //                   child: Container(
          //                     height: 50,
          //                     width: 50,
          //                     decoration: BoxDecoration(
          //                       color: Colors.white,
          //                       borderRadius: BorderRadius.circular(50),
          //                     ),
          //                     child: IconButton(
          //                       onPressed: () {
          //                         setState(() {
          //                           bool isActivated= toggleIsActivated(
          //                               employeeList[index].isActivated);
          //                           employeeList[index].isActivated = isActivated;
          //                         });
          //                       },
          //                       icon: Icon(
          //                         employeeList[index].isActivated == true
          //                             ? Icons.work
          //                             : Icons.work_off_outlined,
          //                         color: Constants.primaryColor,
          //                       ),
          //                       iconSize: 30,
          //                     ),
          //                   ),
          //                 ),
          //                 Positioned(
          //                   left: 5,
          //                   right: 30,
          //                   top: 20,
          //                   bottom: 30,
          //                   child: Image.asset(employeeList[index].imageURL),
          //                 ),
          //                 Positioned(
          //                   bottom: 15,
          //                   left: 20,
          //                   child: Column(
          //                     crossAxisAlignment: CrossAxisAlignment.start,
          //                     children: [
          //                       Text(
          //                         employeeList[index].category,
          //                         style: const TextStyle(
          //                           color: Colors.white70,
          //                           fontSize: 16,
          //                         ),
          //                       ),
          //                       Text(
          //                         employeeList[index].employeeName,
          //                         style: const TextStyle(
          //                           color: Colors.white70,
          //                           fontSize: 14,
          //                           fontWeight: FontWeight.bold,
          //                         ),
          //                       ),
          //                     ],
          //                   ),
          //                 ),
          //                 Positioned(
          //                   bottom: 15,
          //                   right: 10,
          //                   child: Container(
          //                     padding: const EdgeInsets.symmetric(
          //                         horizontal: 10, vertical: 2),
          //                     decoration: BoxDecoration(
          //                       color: Colors.white,
          //                       borderRadius: BorderRadius.circular(20),
          //                     ),
          //                   ),
          //                 ),
          //               ],
          //             ),
          //           ),
          //         );
          //       }),
          // ),
          // Container(
          //   padding: const EdgeInsets.only(left: 16, bottom: 10, top: 15),
          //   child: const Text(
          //     'Employee',
          //     style: TextStyle(
          //       fontWeight: FontWeight.bold,
          //       fontSize: 18.0,
          //     ),
          //   ),
          // ),
          const SizedBox(
                height: 10,
              ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            height: size.height * .7,
            child: ListView.builder(
                itemCount: employeeList.length,
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                      onTap: (){
                        Navigator.push(context, PageTransition(child: DetailPage(employId: employeeList[index].employId), type: PageTransitionType.bottomToTop));
                      },
                      child: EmployWidget(index: index, employeeList: employeeList));
                }),
          ),
        ],
      ),
    ));
  }
}
