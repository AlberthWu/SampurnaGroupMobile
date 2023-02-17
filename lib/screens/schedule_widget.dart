import 'package:flutter/material.dart';
import 'package:sampurnagroupmobile/constants.dart';
import 'package:page_transition/page_transition.dart';

//schedule
import 'package:sampurnagroupmobile/schedule-sj/schedule_driver.dart';
import 'package:sampurnagroupmobile/schedule-sj/detail_schedule.dart';
import 'package:sampurnagroupmobile/schedule-sj/testing_detail.dart';

class ScheduleWidget extends StatefulWidget {
  const ScheduleWidget({
    Key? key, required this.index, required this.scheduleList,
  }) : super(key: key);

  final int index;
  final List<ScheduleDriver> scheduleList;

  @override
  State<ScheduleWidget> createState() => _ScheduleWidgetState();
}

class _ScheduleWidgetState extends State<ScheduleWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    // intial DropdownTab Value
  String? DropdownSJ;

  // List of items in our dropdown menu
  List<String> items = [
    "1",
    "2",
    "3",
    "4",
    "5",
  ];

  int current = 0;

    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            PageTransition(
                child: TestingDetail(
                  sDriverId: widget.scheduleList[widget.index].sDriverId,
                ),
                type: PageTransitionType.bottomToTop));
      },
      child: Container(
        decoration: BoxDecoration(
          color: Constants.secondaryColor.withOpacity(.1),
          borderRadius: BorderRadius.circular(10),
        ),
        height: 130.0,
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
                  // decoration: BoxDecoration(
                  //   color: Constants.primaryColor.withOpacity(.8),
                  //   shape: BoxShape.circle,
                  // ),
                ),
                // Positioned(
                //   bottom: 0,
                //   left: 0,
                //   right: 0,
                //   child: SizedBox(
                //     height: 40.0,
                //     child:
                //     Image.asset(scheduleList[index].imageURL),
                //   ),
                // ),
                Positioned(
                  top: -28,
                  bottom: -40,
                  left: 10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: size.width * 0.6,
                            child: Text(
                              widget.scheduleList[widget.index].asal,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Constants.blackColor,
                              ),
                            ),
                          ),
                          Container(
                            height: 37,
                            width: 80,
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            decoration: BoxDecoration(
                              color: Constants.secondaryColor,
                              borderRadius: BorderRadius.circular(5.0),
                              // border: Border.all(
                              //   color: Constants.primaryColor, style: BorderStyle.solid, width: 0.80),
                            ),
                            
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                isExpanded: true,
                                hint: Text('0/5'),
                                style: TextStyle(color: Colors.white, fontSize: 12, fontFamily: 'Nexa'),
                                value: DropdownSJ,
                                  onChanged: (newValue) {
                                    setState(
                                      () {
                                        DropdownSJ = newValue.toString();
                                      },
                                    );
                                  },
                                  items: items.map<DropdownMenuItem<String>>(
                                    (value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    },
                                  ).toList(),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: size.width * 0.62,
                            child: Text(
                              widget.scheduleList[widget.index].tujuan,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: Constants.blackColor,
                              ),
                            ),
                          ),
                          
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: size.width * 0.60,
                            child: Text( 
                              widget.scheduleList[widget.index].nomorSJ.toString(),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(backgroundColor: Constants.statusColor, padding: EdgeInsets.symmetric(horizontal: 25, vertical:-5)),
                            onPressed: () {},
                            child: Container(
                              child: const Text(
                                'Open', 
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                                ),
                              ),
                            ),
                          ),
                        ],
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

