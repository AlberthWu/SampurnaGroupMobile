import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:sampurnagroupmobile/constants.dart';

//schedule 
import 'package:sampurnagroupmobile/models/schedule_driver.dart';

class DetailSchedule extends StatefulWidget {
  final int sDriverId;
  const DetailSchedule({Key? key, required this.sDriverId}) : super(key: key);

  @override
  State<DetailSchedule> createState() => _DetailScheduleState();
}

class _DetailScheduleState extends State<DetailSchedule> {
  

  // String? selectedValue;


  // with SingleTickerProviderStateMixin {

  // late TabController _tabController;

  // @override
  // void initState() {
  //   _tabController = TabController(length: 2, vsync: this);
  // }

  // @override
  // void dispose() {
  //   super.dispose();
  //   _tabController.dispose();
  // }

  //Toggle Activated button
  // bool toggleIsActivated(bool isActivated) {
  //   return !isActivated;
  // }

  //Toggle nonActive button
  // bool toggleIsNonactive(bool isNonactive) {
  //   return !isNonactive;
  // }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<ScheduleDriver> scheduleList = ScheduleDriver.scheduleList;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 40,
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
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Constants.secondaryColor.withOpacity(.15),
                    ),
                    child: Icon(
                      Icons.close,
                      color: Constants.primaryColor,
                    ),
                  ),
                ),
                // GestureDetector(
                  // onTap: () {
                    // debugPrint('active');
                  // },
                  // child: Container(
                    // height: 40,
                    // width: 40,
                    // decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(25),
                      // color: Constants.secondaryColor.withOpacity(.15),
                    // ),
                    // child: IconButton(
                        // onPressed: () {
                          // setState(() {
                            // bool isActivated= toggleIsActivated(
                                // employeeList[widget.employId].isActivated);
                            // employeeList[widget.employId].isActivated =
                                // isActivated;
                          // });
                        // },
                //         icon: Icon(
                //           employeeList[widget.employId].isActivated == true
                //               ? Icons.work
                //               : Icons.work_off_outlined,
                //           color: Constants.primaryColor,
                //         )),
                //   ),
                // ),
              ],
            ),
          ),
          Positioned(
            top: 65,
            left: 10,
            right: 10,
            child: Container(
              width: size.width * .9,
              height: size.height * .9,
              padding: const EdgeInsets.all(10),
              child: Stack(
                children: [
                  // Positioned(
                  //   top: -30,
                  //   left: 105,
                  //   child: SizedBox(
                  //     height: 250,
                  //     child: Image.asset(employeeList[widget.employId].imageURL),
                  //   ),
                  // ),
                  Positioned(
                    top: 5,
                    right: 0,
                    left: 0,
                    child: SizedBox(
                      height: 130,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: size.width * 0.4,
                                child: ScheduleFeature(
                                  title: 'Asal',
                                  scheduleFeature: 
                                      scheduleList[widget.sDriverId].asal,
                                ),
                              ),
                              Container(
                                width: size.width * 0.4,
                                child: ScheduleFeature(
                                  title: 'Tujuan',
                                  scheduleFeature:
                                      scheduleList[widget.sDriverId].tujuan,
                                ),
                              ),
                            ],
                          ),
                          Expanded(
                            child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: size.width * 0.4,
                                      child: ScheduleFeature(
                                        title: 'Nomor SJ',
                                        scheduleFeature:
                                            scheduleList[widget.sDriverId].nomorSJ.toString(),
                                      ),
                                    ),
                                    Container(
                                      width: size.width * 0.4,
                                      child: ScheduleFeature(
                                        title: 'Pool',
                                        scheduleFeature:
                                            scheduleList[widget.sDriverId].pool,
                                      ),
                                    ),
                                  ],
                                ),
                          ),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: size.width * 0.4,
                                      child: ScheduleFeature(
                                        title: 'Tanggal SJ',
                                        scheduleFeature:
                                            scheduleList[widget.sDriverId].tanggal.toString(),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Positioned(
            top: -175,
            left: 25,
            bottom: 0,
            child: CircleAvatar(
              radius: 25,
              backgroundColor: Color.fromARGB(255, 174, 0, 0),
              child: Text('X'),
            ),
          ),
          Positioned(
            top: 225,
            right: -5,
            left: -5,
            bottom: 0,
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(1),
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Constants.secondaryColor.withOpacity(0.4),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 0, bottom: 0, right: 0, top: 15),
                  child: Text(
                    'Nama Driver',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 100, bottom: 0, right: 0, top: 5),
                      child: Text(
                        'Nomor Polisi',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10, bottom: 0, right: 0, top: 5),
                      child: Text(
                        'Nomor SIM',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10, bottom: 0, right: 0, top: 5),
                      child: Text(
                        'Expired Date SIM',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),   
          Positioned(
            top: 325,
            right: 0,
            left: 0,
            child: Container(
              padding: const EdgeInsets.all(1),
              decoration: BoxDecoration(
                  color: Constants.secondaryColor.withOpacity(0.4),
                  // borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
          // Positioned(
          //   top: 340,
          //   right: 0,
          //   left: 10,
          //   child: Container(
          //     child: Row(
          //       children: [
          //         const SizedBox(width: 12.0),
          //         InkWell(
          //           onTap: () {},
          //           child: const Text('Memo Potongan'),
          //         ),
          //         const SizedBox(width: 12.0),
          //         InkWell(
          //           onTap: () {},
          //           child: const Text('Kasbon'),
          //         ),
          //       ],
          //     ),
          //   ), 
          // ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 100, vertical: 40),
              padding: EdgeInsets.all(10),
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Constants.statusColor),
                    child: Text("Terima", style:TextStyle(color: Constants.blackColor, fontSize: 14.0, fontStyle: FontStyle.normal),),
                    onPressed: () {},
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Constants.closeColor),
                    child: Text("Tolak", style: TextStyle(color: Constants.blackColor, fontSize: 14.0, fontStyle: FontStyle.normal),),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          Positioned(
            top: 300,
            right: 0,
            left: 0,
            child: Container(
              height: 300,
              width: 300,
              // decoration: BoxDecoration(
              //   color: Constants.whiteColor,
                // borderRadius: BorderRadius.circular(15,),
              // ),
              child: DefaultTabController(
                length: 2,
                child: PreferredSize(
                  preferredSize: Size.fromHeight(kToolbarHeight),
                  child: Container(
                    child: SafeArea(
                      // height: 100.0,
                      child: Column(
                        children: <Widget>[
                          TabBar(
                            // controller: _tabController,
                            indicator: const UnderlineTabIndicator(
                              borderSide: BorderSide(width: 1.0),
                              // color: Constants.blackColor,
                            ),
                            labelColor: Constants.primaryColor,
                            unselectedLabelColor: Constants.blackColor,
                            tabs: const <Widget>[
                              Tab(
                                text: "Memo Potongan",
                                // child: Text('Memo Potongan'),
                              ),
                              Tab(
                                text: "Kasbon",
                                // child: Text('Kasbon'),
                              ),
                            ],
                          ),
                          Expanded(
                            child: TabBarView(
                              children: <Widget>[
                                Container(
                                  height: 100,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [Text("Memo Potongan")],
                                    // color: Constants.whiteColor,
                                  ),
                                ),
                                Container(
                                  width: 100,
                                  height: 100,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [Text("Kasbon")],
                                    // color: Constants.primaryColor,
                                  ),
                                ),
                              ])),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )),
            
          // Positioned(
          //   bottom: 0,
          //   left: 0,
          //   right: 0,
          //   child: Container(
          //     padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
          //     height: size.height * .12,
          //     width: size.width,
          //     decoration: BoxDecoration(
          //       color: Constants.secondaryColor.withOpacity(.4),
          //       borderRadius: const BorderRadius.only(
          //         topRight: Radius.circular(45),
          //         topLeft: Radius.circular(45),
          //       ),
          //     ),
          //     child: Column(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         Row(
          //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //           crossAxisAlignment: CrossAxisAlignment.center,
          //           children: [
          //             Column(
          //               crossAxisAlignment: CrossAxisAlignment.start,
          //               children: const [
          //                 // Text(
                          //   scheduleList[widget.sDriverId].asal,
                          //   style: TextStyle(
                          //     color: Constants.primaryColor,
                          //     fontWeight: FontWeight.bold,
                          //     fontSize: 20.0,
                          //   ),
                          // ),
                  //         SizedBox(
                  //           height: 20,
                  //         ),
                  //       ],
                  //     ),
                  //   ],
                  // ),
                  // Container(
                  //   height: 50,
                  //   margin: 
                  //       const EdgeInsets.only(top: 150, left: 0, right: 0, bottom: 0),
                  //   width: double.infinity,
                  //   child: Column(
                  //     children: [
                  //       SizedBox(
                  //         height: 50,
                  //         child: Row(
                  //           mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //           children: [
                  //             Expanded(
                  //               child: Container(
                  //                 padding: const EdgeInsets.all(10),
                  //                 decoration: BoxDecoration(
                  //                     color: Constants.primaryColor,
                  //                     borderRadius: BorderRadius.circular(10),
                  //                     boxShadow: [
                  //                       BoxShadow(
                  //                         offset: const Offset(0, 1),
                  //                         blurRadius: 5,
                  //                         color: Constants.primaryColor.withOpacity(.3)
                  //                       )
                  //                     ]),
                  //                 alignment: Alignment.center,
                  //                 child: Row(
                  //                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //                   children: const [
                  //                     Icon(Icons.money, color: Colors.white),
                  //                     Text(
                  //                       "Slip",
                  //                       style: TextStyle(fontFamily: "Nexa", color: Colors.white),
                  //                     ),
                  //                   ],
                  //                 ),
                  //             )),
                  //             const SizedBox(
                  //               width: 5,
                  //             ),
                  //             Expanded(
                  //               child: Container(
                  //                 padding: const EdgeInsets.all(10),
                  //                 decoration: BoxDecoration(
                  //                     color: Constants.primaryColor,
                  //                     borderRadius: BorderRadius.circular(10),
                  //                     boxShadow: [
                  //                       BoxShadow(
                  //                         offset: const Offset(0, 1),
                  //                         blurRadius: 5,
                  //                         color: Constants.primaryColor.withOpacity(.3)
                  //                       ),
                  //                     ]),
                  //                 alignment: Alignment.center,
                  //                 child: Row(
                  //                   mainAxisAlignment:
                  //                       MainAxisAlignment.spaceEvenly,
                  //                   children: const [
                  //                     Icon(Icons.car_rental_outlined, color: Colors.white),
                  //                     Text(
                  //                       "Order",
                  //                       style: TextStyle(fontFamily: "Nexa", color: Colors.white),
                  //                     ),
                  //                   ],
                  //                 ),
                  //               ),
                  //             ),
                  //             const SizedBox(
                  //               width: 5,
                  //             ),
                  //             Expanded(
                  //               child: Container(
                  //                 padding: const EdgeInsets.all(10),
                  //                 decoration: BoxDecoration(
                  //                     color: Constants.primaryColor,
                  //                     borderRadius: BorderRadius.circular(10),
                  //                     boxShadow: [
                  //                       BoxShadow(
                  //                         offset: const Offset(0, 1),
                  //                         blurRadius: 5,
                  //                         color: Constants.primaryColor.withOpacity(.3)
                  //                       ),
                  //                     ]),
                  //                 alignment: Alignment.center,
                  //                 child: Row(
                  //                   mainAxisAlignment:
                  //                       MainAxisAlignment.spaceEvenly,
                  //                   children: const [
                  //                     Icon(Icons.monetization_on, color: Colors.white),
                  //                     Text(
                  //                       "Loan",
                  //                       style: TextStyle(fontFamily: "Nexa", color: Colors.white),
                  //                     ),
                  //                   ],
                  //                 ),
                  //               ),
                  //             ),
                  //           ],
                  //         ),
                  //       )
                  //     ],
                  //   ),
                  // )
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}

class ScheduleFeature extends StatelessWidget {
  final String scheduleFeature;
  final String title;
  const ScheduleFeature({
    Key? key,
    required this.scheduleFeature,
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
        FittedBox(
          child: Text(
            scheduleFeature,
            style: TextStyle(
              color: Constants.primaryColor,
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}