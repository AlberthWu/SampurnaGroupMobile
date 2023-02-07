// import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// import 'package:page_transition/page_transition.dart';
import 'package:sampurnagroupmobile/constants.dart';
import 'package:sampurnagroupmobile/models/schedule_driver.dart';
import 'package:sampurnagroupmobile/page/colors_utils.dart';
// import 'package:sampurnagroupmobile/page/date_utils.dart' as date_util;
// import 'package:sampurnagroupmobile/page/schedule.dart';
// import 'package:sampurnagroupmobile/screens/detail_schedule.dart';
// import 'package:sampurnagroupmobile/screens/schedule_widget.dart';

class DetailSJ extends StatefulWidget {
  final int sDriverId;
  const DetailSJ({Key? key, required this.sDriverId}) : super(key: key);
  // final String title;
  // const DetailSJ({Key? key, required this.title}) : super(key: key);

  @override
  _DetailSJState createState() => _DetailSJState();
}

class _DetailSJState extends State<DetailSJ> {
  // double width = 0.0;
  // double height = 0.0;
  // late ScrollController scrollController;
  // List<DateTime> currentMonthList = List.empty();
  // DateTime currentDateTime = DateTime.now();
  // List<String> todos = <String>[];

  // int selectedIndex = 0;
  List<ScheduleDriver> scheduleList = ScheduleDriver.scheduleList;

  //Schedule Category 
  // List<String> scheduleTypes = [
  //   'ScheduleDriver',
  // ];

  // TextEditingController controller = TextEditingController();

  @override
  void initState() {
    // currentMonthList = date_util.DateUtils.daysInMonth(currentDateTime);
    // currentMonthList.sort((a, b) => a.day.compareTo(b.day));
    // currentMonthList = currentMonthList.toSet().toList();
    // scrollController =
    //     ScrollController(initialScrollOffset: 70.0 * currentDateTime.day);
    // super.initState();
    
  }

  Widget backgroundView() {
    return Container(
      decoration: BoxDecoration(
        color: HexColor("#00000"),
      ),
    );
  }

  Widget closePage() {
    return Positioned(
      top: 20,
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
                color: Constants.secondaryColor.withOpacity(.15),
              ),
              child: Icon(
                Icons.close,
                color: Constants.primaryColor,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget informasiSchedule() {
    return Positioned(
      top: 65,
      left: 10,
      right: 10,
      child: Container(
        width: 0.9,
        height: 0.9,
        padding: const EdgeInsets.all(10),
        child: Stack(
          children: [
            Positioned(
              top: 5,
              right: 0,
              left: 0,
              child: SizedBox(
                height: 140,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ScheduleFeature(
                          title: 'Asal',
                          scheduleFeature: 
                            scheduleList[widget.sDriverId].asal,
                        ),
                        ScheduleFeature(
                          title: 'Tujuan',
                          scheduleFeature: 
                            scheduleList[widget.sDriverId].tujuan,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ScheduleFeature(
                              title: 'Nomor Surat Jalan',
                              scheduleFeature: 
                                scheduleList[widget.sDriverId].nomorSJ.toString(),
                            ),
                            ScheduleFeature(
                              title: 'Tanggal Surat Jalan',
                              scheduleFeature: 
                                scheduleList[widget.sDriverId].tanggal.toString(),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ScheduleFeature(
                                  title: 'Pool',
                                  scheduleFeature: 
                                    scheduleList[widget.sDriverId].pool,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget circleImage() {
    return const Positioned(
      top: -125,
      left: 30,
      bottom: 0,
      child: CircleAvatar(
        radius: 25,
        backgroundColor: Color.fromARGB(255, 174, 0, 0),
        child: Text('X'),
      ),
    );
  }

  Widget detailDriver() {
    return Positioned(
      top: 225,
      right: -5,
      left: -5,
      bottom: 0,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(3),
            margin: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Constants.secondaryColor.withOpacity(0.4),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 0, bottom: 0, right: 0, top: 3),
            child: Text(
              'Driver',
              textDirection: TextDirection.ltr,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 0, bottom: 0, right: 0, top: 5),
            child: Text(
              'Nama Driver',
              textDirection: TextDirection.ltr,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 0, bottom: 0, right: 0, top: 5),
            child: Text(
              'Nomor Polisi',
              textDirection: TextDirection.ltr,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }


  // Widget titleView() {
  //   return Row(
  //     children: <Widget>[
  //     Padding(
  //       padding: const EdgeInsets.all(8.0),
  //       child: Row(
  //       children: <Widget>[
  //         Text(
  //           "Schedule",
  //           style: TextStyle(
  //             color: Constants.blackColor,
  //             fontSize: 20.0,
  //             fontWeight: FontWeight.bold,
  //           ),
  //         ),
  //         const SizedBox(width: 8.0),
  //         Text(
  //           "Surat Jalan",
  //           style: TextStyle(
  //             color: Constants.blackColor.withOpacity(0.7),
  //             fontSize: 18.0,
  //             fontWeight: FontWeight.bold,
  //           ),
  //         ),
  //       ],
  //   ),
  //     ),
  //   const Spacer(),
  //     Padding(
  //       padding: const EdgeInsets.all(8.0),
  //       child: Text(
  //         date_util.DateUtils.months[currentDateTime.month - 1] +
  //             ' ' +
  //           currentDateTime.year.toString(),
  //           style: TextStyle(
  //             color: Constants.blackColor,
  //             fontSize: 14.0,
  //             fontWeight: FontWeight.bold,
  //           ),
  //         ),
  //       ),
  //     ],
  //   );
  // }

  // Widget hrizontalCapsuleListView() {
  //   return SizedBox(
  //     width: width,
  //     height: 150,
  //     child: ListView.builder(
  //       controller: scrollController,
  //       scrollDirection: Axis.horizontal,
  //       physics: const ClampingScrollPhysics(),
  //       shrinkWrap: true,
  //       itemCount: currentMonthList.length,
  //       itemBuilder: (BuildContext context, int index) {
  //         return capsuleView(index);
  //       },
  //     ),
  //   );
  // }

  // Widget capsuleView(int index) {
  //   return Padding(
  //       padding: const EdgeInsets.fromLTRB(12, 75, 1, 20),
  //       child: GestureDetector(
  //         onTap: () {
  //           setState(() {
  //             currentDateTime = currentMonthList[index];
  //           });
  //         },
  //         child: Container(
  //           width: 40,
  //           height: 200,
  //           decoration: BoxDecoration(
  //               gradient: LinearGradient(
  //                   colors: (currentMonthList[index].day != currentDateTime.day)
  //                       ? [
  //                           Colors.white.withOpacity(0.8),
  //                           Colors.white.withOpacity(0.8),
  //                           Colors.white.withOpacity(0.8)
  //                         ]
  //                       : [
  //                           HexColor("AE0000"),
  //                           HexColor("AE0000"),
  //                           HexColor("AE0000")
  //                         ],
  //                   begin: const FractionalOffset(0.0, 0.0),
  //                   end: const FractionalOffset(0.0, 1.0),
  //                   stops: const [0.0, 0.5, 1.0],
  //                   tileMode: TileMode.clamp),
  //               borderRadius: BorderRadius.circular(10),
  //               boxShadow: const [
  //                 BoxShadow(
  //                   offset: Offset(4, 4),
  //                   blurRadius: 2,
  //                   spreadRadius: 1,
  //                   color: Colors.black12,
  //                 )
  //               ]),
  //           child: Center(
  //             child: Column(
  //               mainAxisAlignment: MainAxisAlignment.center,
  //               children: <Widget>[
  //                 Text(
  //                   currentMonthList[index].day.toString(),
  //                   style: TextStyle(
  //                       fontSize: 15,
  //                       fontWeight: FontWeight.bold,
  //                       color:
  //                           (currentMonthList[index].day != currentDateTime.day)
  //                               ? HexColor("000000")
  //                               : Colors.white),
  //                 ),
  //                 Text(
  //                   date_util.DateUtils
  //                       .weekdays[currentMonthList[index].weekday - 1],
  //                   style: TextStyle(
  //                       fontSize: 10,
  //                       fontWeight: FontWeight.bold,
  //                       color:
  //                           (currentMonthList[index].day != currentDateTime.day)
  //                               ? HexColor("D68900")
  //                               : Colors.white),
  //                 )
  //               ],
  //             ),
  //           ),
  //         ),
  //       ));
  // }

  // Widget topView() {
  //   return Container(
  //     height: height * 0.30,
  //     width: width,
  //     decoration: BoxDecoration(
  //       gradient: LinearGradient(
  //           colors: [
  //             HexColor("FFFFFF"),
  //             HexColor("FFFFFF"),
  //             HexColor("FFFFFF")
  //           ],
  //           begin: const FractionalOffset(0.0, 0.0),
  //           end: const FractionalOffset(0.0, 1.0),
  //           stops: const [0.0, 0.5, 1.0],
  //           tileMode: TileMode.clamp),
  //     ),
  //     child: Column(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: <Widget>[
  //           titleView(),
  //           hrizontalCapsuleListView(),
  //         ]),
  //   );
  // }

  // Widget floatingActionBtn() {
  //   return Align(
  //     alignment: Alignment.bottomRight,
  //     child: FloatingActionButton(
  //       child: Container(
  //         width: 100,
  //         height: 100,
  //         decoration: BoxDecoration(
  //             shape: BoxShape.circle,
  //             gradient: LinearGradient(
  //                 colors: [
  //                   HexColor("AE0000"),
  //                   HexColor("AE0000"),
  //                   HexColor("AE0000")
  //                 ],
  //                 begin: const FractionalOffset(0.0, 0.0),
  //                 end: const FractionalOffset(0.0, 1.0),
  //                 stops: const [0.0, 0.5, 1.0],
  //                 tileMode: TileMode.clamp)),
  //         child: const Icon(
  //           Icons.add,
  //           size: 20,
  //         ),
  //       ),
        // onPressed: () {
        //   controller.text = "";
        //   showDialog(
        //       context: context,
        //       builder: (BuildContext context) {
        //         return Dialog(
        //           backgroundColor: Colors.white,
        //           shape: RoundedRectangleBorder(
        //               borderRadius: BorderRadius.circular(20)),
        //           child: Container(
        //             height: 220,
        //             width: 320,
        //             padding: const EdgeInsets.all(12),
        //             child: Column(
        //               mainAxisAlignment: MainAxisAlignment.center,
        //               children: <Widget>[
        //                 const SizedBox(
        //                   height: 10,
        //                 ),
        //                 const Text(
        //                   "Schedule Surat Jalan",
        //                   style: TextStyle(
        //                       color: Color.fromARGB(255, 174, 0, 0),
        //                       fontSize: 16,
        //                       fontWeight: FontWeight.bold),
        //                 ),
        //                 const SizedBox(
        //                   height: 20,
        //                 ),
        //                 TextField(
        //                   controller: controller,
        //                   style: const TextStyle(color: Colors.black),
        //                   autofocus: true,
        //                   decoration: const InputDecoration(
        //                       hintText: 'Add your schedule',
        //                       hintStyle: TextStyle(color: Colors.black),
        //                       border: OutlineInputBorder(),
        //                       focusedBorder: const OutlineInputBorder(
        //                         borderSide: BorderSide(color: Color.fromARGB(255, 214, 137, 0)),
        //                     ),
        //                   ),
        //                 ),
        //                 const SizedBox(
        //                   height: 20,
        //                 ),
        //                 SizedBox(
        //                   width: 300,
        //                   child: OutlinedButton(
        //                     style: ButtonStyle(
        //                       side: MaterialStateProperty.all(const BorderSide(
        //                         color: Color.fromARGB(255, 214, 137, 0),
        //                         width: 1.0,
        //                         style: BorderStyle.solid)),
        //                     ),
        //                     onPressed: () {
        //                       setState(() {
        //                         todos.add(controller.text);
        //                       });
        //                       Navigator.of(context).pop();
        //                     },
        //                     child: const Text(
        //                       "Add", 
        //                       style: TextStyle(
        //                         color: const Color.fromARGB(255, 174, 0, 0), fontWeight: FontWeight.bold
        //                     )),
        //                   ),
        //                 )
        //               ],
        //             ),
        //           ),
        //         );
        //       });
        // },
  //     ),
  //   );
  // }

  // Widget todoList() {
  //   return Container(
      // margin: EdgeInsets.fromLTRB(10, height * 0.32, 10, 5),
      // padding: const EdgeInsets.symmetric(horizontal: 10),
      // width: width,
      // height: height * .7,
      // child: ListView.builder(
      //     itemCount: scheduleList.length,
      //     scrollDirection: Axis.vertical,
      //     physics: const BouncingScrollPhysics(),
          // padding: EdgeInsets.zero,
          // itemBuilder: (BuildContext context, int index) {
          //   return GestureDetector(
          //     onTap: () {
          //       Navigator.push(context, PageTransition(child: DetailSchedule(sDriverId: scheduleList[index].sDriverId), type: PageTransitionType.bottomToTop));
          //     },
          //   );
            // Container(
            //   margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
            //   width: width - 20,
            //   height: 50,
            //   decoration: BoxDecoration(
            //       color: Constants.secondaryColor.withOpacity(.3),
            //       borderRadius: BorderRadius.circular(10),
            //       boxShadow: const [
            //         BoxShadow(
            //             color: Colors.white12,
            //             blurRadius: 2,
            //             offset: Offset(2, 2),
            //             spreadRadius: 3)
            //       ]),
            //   child: Center(
            //     child: Text(
            //       todos[index],
            //       style: const TextStyle(
            //           color: Colors.black,
            //           fontSize: 14,
            //           fontWeight: FontWeight.normal),
            //     ),
            //   ),
            // );
          // }),
    // );
  // }

  //Widget Listing
  // Widget listingSchedule() {
  //   return Container(
  //     margin: EdgeInsets.fromLTRB(10, height * 0.32, 10, 5),
  //     padding: const EdgeInsets.symmetric(horizontal: 10),
  //     width: width,
  //     height: height * .7,
  //     // padding: const EdgeInsets.symmetric(horizontal: 10),
  //     // height: height * .7,
  //     child: ListView.builder(
  //       itemCount: scheduleList.length,
  //       scrollDirection: Axis.vertical,
  //       physics: const BouncingScrollPhysics(),
  //       itemBuilder: (BuildContext context, int index) {
  //       return GestureDetector(
  //           onTap: (){
  //             Navigator.push(context, PageTransition(child: DetailSchedule(sDriverId: scheduleList[index].sDriverId), type: PageTransitionType.bottomToTop));
  //           },
  //           child: ScheduleWidget(index: index, scheduleList: scheduleList));
  //     }),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // width = MediaQuery.of(context).size.width;
    // height = MediaQuery.of(context).size.height;
    // var size;
    return Container(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 174, 0, 0),
          title: const Text("Schedule"),
          centerTitle: true,
        ),
          body: Stack(
            children: <Widget>[
              backgroundView(), 
              closePage(),
              informasiSchedule()
              // topView(),
              // listingSchedule()
              // todoList()
            ],   
          ),
        ),
    );
          // const SizedBox(
          //   height: 10,
          // ),
        // floatingActionButton: floatingActionBtn()
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
        Text(
          scheduleFeature,
          style: TextStyle(
            color: Constants.primaryColor,
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
