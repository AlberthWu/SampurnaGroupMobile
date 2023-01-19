import 'package:flutter/material.dart';
import 'package:sampurnagroupmobile/constants.dart';
import 'package:sampurnagroupmobile/models/employ.dart';

class DetailPage extends StatefulWidget {
  final int employId;
  const DetailPage({Key? key, required this.employId}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  //Toggle Activated button
  bool toggleIsActivated(bool isActivated) {
    return !isActivated;
  }

  //Toggle nonActive button
  bool toggleIsNonactive(bool isNonactive) {
    return !isNonactive;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<Employee> employeeList = Employee.employeeList;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 30,
            left: 20,
            right: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Constants.primaryColor.withOpacity(.15),
                    ),
                    child: Icon(
                      Icons.close,
                      color: Constants.primaryColor,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    debugPrint('active');
                  },
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Constants.primaryColor.withOpacity(.15),
                    ),
                    child: IconButton(
                        onPressed: () {
                          setState(() {
                            bool isActivated= toggleIsActivated(
                                employeeList[widget.employId].isActivated);
                            employeeList[widget.employId].isActivated =
                                isActivated;
                          });
                        },
                        icon: Icon(
                          employeeList[widget.employId].isActivated == true
                              ? Icons.work
                              : Icons.work_off_outlined,
                          color: Constants.primaryColor,
                        )),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 75,
            left: 10,
            right: 10,
            child: Container(
              width: size.width * .9,
              height: size.height * .9,
              padding: const EdgeInsets.all(10),
              child: Stack(
                children: [
                  Positioned(
                    top: 10,
                    left: 115,
                    child: SizedBox(
                      height: 140,
                      child: Image.asset(employeeList[widget.employId].imageURL),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 0,
                    left: 5,
                    child: SizedBox(
                      height: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          EmployeeFeature(
                            title: 'Name',
                            employeeFeature: 
                                employeeList[widget.employId].employeeName,
                          ),
                          EmployeeFeature(
                            title: 'Occupation',
                            employeeFeature:
                                employeeList[widget.employId].occupation,
                          ),
                          EmployeeFeature(
                            title: 'Group',
                            employeeFeature:
                                employeeList[widget.employId].grouppt,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
              height: size.height * .5,
              width: size.width,
              decoration: BoxDecoration(
                color: Constants.primaryColor.withOpacity(.4),
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(45),
                  topLeft: Radius.circular(45),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            employeeList[widget.employId].employeeName,
                            style: TextStyle(
                              color: Constants.primaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: 50,
                    margin: 
                        const EdgeInsets.only(top: 150, left: 0, right: 0, bottom: 0),
                    width: double.infinity,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Expanded(
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: Constants.primaryColor,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                          offset: const Offset(0, 1),
                                          blurRadius: 5,
                                          color: Constants.primaryColor.withOpacity(.3)
                                        )
                                      ]),
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: const [
                                      Icon(Icons.money, color: Colors.white),
                                      Text(
                                        "Slip",
                                        style: TextStyle(fontFamily: "Nexa", color: Colors.white),
                                      ),
                                    ],
                                  ),
                              )),
                              const SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: Constants.primaryColor,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                          offset: const Offset(0, 1),
                                          blurRadius: 5,
                                          color: Constants.primaryColor.withOpacity(.3)
                                        ),
                                      ]),
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: const [
                                      Icon(Icons.car_rental_outlined, color: Colors.white),
                                      Text(
                                        "Order",
                                        style: TextStyle(fontFamily: "Nexa", color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: Constants.primaryColor,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                          offset: const Offset(0, 1),
                                          blurRadius: 5,
                                          color: Constants.primaryColor.withOpacity(.3)
                                        ),
                                      ]),
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: const [
                                      Icon(Icons.monetization_on, color: Colors.white),
                                      Text(
                                        "Loan",
                                        style: TextStyle(fontFamily: "Nexa", color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: SizedBox(
        width: size.width * .9,
        height: 50,
        child: Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  color: employeeList[widget.employId].isNonactive == true ? Constants.primaryColor.withOpacity(.5) : Colors.white,
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 1),
                      blurRadius: 5,
                      color: Constants.primaryColor.withOpacity(.3),
                    ),
                  ]),
              child: IconButton(onPressed: (){
                setState(() {
                  bool isNonactive= toggleIsNonactive(employeeList[widget.employId].isNonactive);

                  employeeList[widget.employId].isNonactive= isNonactive;
                });
              }, icon: Icon(
                Icons.access_time_outlined,
                color: employeeList[widget.employId].isNonactive == true ? Colors.white : Constants.primaryColor,
              )),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Constants.primaryColor,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 1),
                        blurRadius: 5,
                        color: Constants.primaryColor.withOpacity(.3),
                      )
                    ]),
                child: const Center(
                  child: Text(
                    'Record Attendance',
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontSize: 14.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class EmployeeFeature extends StatelessWidget {
  final String employeeFeature;
  final String title;
  const EmployeeFeature({
    Key? key,
    required this.employeeFeature,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Constants.blackColor,
          ),
        ),
        Text(
          employeeFeature,
          style: TextStyle(
            color: Constants.primaryColor,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}