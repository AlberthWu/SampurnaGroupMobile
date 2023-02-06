import 'package:flutter/material.dart';
import 'package:sampurnagroupmobile/constants.dart';
import 'package:page_transition/page_transition.dart';

//schedule
import 'package:sampurnagroupmobile/models/schedule_driver.dart';
import 'package:sampurnagroupmobile/screens/detail_schedule.dart';

class ScheduleWidget extends StatelessWidget {
  const ScheduleWidget({
    Key? key, required this.index, required this.scheduleList,
  }) : super(key: key);

  final int index;
  final List<ScheduleDriver> scheduleList;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            PageTransition(
                child: DetailSchedule(
                  sDriverId: scheduleList[index].sDriverId,
                ),
                type: PageTransitionType.bottomToTop));
      },
      child: Container(
        decoration: BoxDecoration(
          color: Constants.secondaryColor.withOpacity(.1),
          borderRadius: BorderRadius.circular(10),
        ),
        height: 70.0,
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
                  top: -12,
                  bottom: -30,
                  left: 50,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(scheduleList[index].asal),
                      Text(
                        scheduleList[index].tujuan,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Constants.blackColor,
                        ),
                      ),
                      Text( r'$' + scheduleList[index].nomorSJ.toString()),
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