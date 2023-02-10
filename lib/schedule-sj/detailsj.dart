import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:sampurnagroupmobile/constants.dart';

//schedule 
import 'package:sampurnagroupmobile/schedule-sj/schedule_driver.dart';

//camera
import 'package:image_picker/image_picker.dart';
import 'package:flutter/services.dart';
import 'dart:io';

class DetailSJalan extends StatefulWidget {
  final int sDriverId;
  const DetailSJalan({Key? key, required this.sDriverId}) : super(key: key);

  @override
  State<DetailSJalan> createState() => _DetailSJalanState();
}

class _DetailSJalanState extends State<DetailSJalan> {

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
              ],
            ),
          ),
          Positioned(
            top: 65,
            left: 10,
            right: 10,
            child: Container(
              width: size.width * .9,
              height: size.height * .5,
              padding: const EdgeInsets.all(12),
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    right: 0,
                    left: 0,
                    child: SizedBox(
                      height: 320,
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
                                  title: 'Nomor Surat Jalan',
                                  scheduleFeature: 
                                      scheduleList[widget.sDriverId].nomorSJ.toString(),
                                ),
                              ),
                              Container(
                                width: size.width * 0.4,
                                child: ScheduleFeature(
                                  title: 'Tanggal Schedule',
                                  scheduleFeature:
                                      scheduleList[widget.sDriverId].tanggal.toString(),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 38,
                            child: Expanded(
                              child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: size.width * 0.4,
                                        child: ScheduleFeature(
                                          title: 'Muat',
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
                            ),
                          ),
                          SizedBox(
                            height: 38,
                            child: Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: size.width * 0.4,
                                      child: ScheduleFeature(
                                        title: 'Customer',
                                        scheduleFeature:
                                            scheduleList[widget.sDriverId].customer,
                                      ),
                                    ),
                                    Container(
                                      width: size.width * 0.4,
                                      child: ScheduleFeature(
                                        title: 'Material',
                                        scheduleFeature:
                                            scheduleList[widget.sDriverId].material,
                                      ),
                                    ),
                                  ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 38,
                            child: Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: size.width * 0.4,
                                      child: ScheduleFeature(
                                        title: 'Nomor Polisi',
                                        scheduleFeature:
                                            scheduleList[widget.sDriverId].nomorPolisi,
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
                          ),
                          SizedBox(
                            height: 38,
                            child: Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: size.width * 0.4,
                                      child: ScheduleFeature(
                                        title: 'Driver',
                                        scheduleFeature:
                                            scheduleList[widget.sDriverId].driver,
                                      ),
                                    ),
                                    Container(
                                      width: size.width * 0.4,
                                      child: ScheduleFeature(
                                        title: 'Jenis',
                                        scheduleFeature:
                                            scheduleList[widget.sDriverId].jenis,
                                      ),
                                    ),
                                  ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 38,
                            child: Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: size.width * 0.4,
                                      child: ScheduleFeature(
                                        title: 'Nomor Rekening',
                                        scheduleFeature:
                                            scheduleList[widget.sDriverId].noRekening.toString(),
                                      ),
                                    ),
                                    Container(
                                      width: size.width * 0.4,
                                      child: ScheduleFeature(
                                        title: 'UJT',
                                        scheduleFeature:
                                            scheduleList[widget.sDriverId].ujt.toString(),
                                      ),
                                    ),
                                  ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 38,
                            child: Expanded(
                              child: Row(
                                  children: [
                                    Container(
                                      width: 200.0,
                                      child: ScheduleFeature(
                                        title: 'Grup Perusahaan',
                                        scheduleFeature:
                                            (scheduleList[widget.sDriverId].grup),
                                      ), 
                                    ),
                                    Container(
                                      width: 35.0,
                                      height: 80.0,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                          fit: BoxFit.fitHeight,
                                          image: AssetImage('assets/images/smslogo.png'),
                                        ),
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
                ],
              ),
            ),
          ),
          // Container(
          //   margin: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
          //   padding: const EdgeInsets.fromLTRB(0, 390, 0, 0),
          //     child: ListView(
          //       children: [
          //         const SizedBox(height: 20, width: 40,),
          //           image != null ? Image.file(image!): const Text('No image selected', textAlign: TextAlign.center,),
          //             const SizedBox(height: 20,),
          //               Row(
          //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //                   children: [
          //                     OutlinedButton(
          //                       style: ButtonStyle(
          //                         side: MaterialStateProperty.all(BorderSide(
          //                         color: Constants.blackColor,
          //                         width: 1.0,
          //                         style: BorderStyle.solid)),
          //                       ),
          //                         child: const Text(
          //                           "Gallery",
          //                           style: TextStyle(
          //                           color: Colors.black, fontWeight: FontWeight.bold
          //                           ),
          //                         ),
          //                           onPressed: () {
          //                             pickImage();
          //                           },
          //                     ),
          //                                 OutlinedButton(
          //                                   style: ButtonStyle(
          //                                     side: MaterialStateProperty.all(BorderSide(
          //                                       color: Constants.blackColor,
          //                                       width: 1.0,
          //                                       style: BorderStyle.solid)),
          //                                   ),
          //                                   child: const Text(
          //                                     "Camera",
          //                                     style: TextStyle(
          //                                       color: Colors.black, fontWeight: FontWeight.bold
          //                                     ),
          //                                   ),
          //                                   onPressed: () {
          //                                     pickImageC();
          //                                   },
          //                                 ),
          //                               ],
          //                             )
          //                         ],
          //                       ),
          // ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
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
        FittedBox(
          child: Text(
            title,
            style: TextStyle(
              color: Constants.blackColor,
              fontSize: 11.0,
            ),
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
        ),
      ],
    );
  }
}