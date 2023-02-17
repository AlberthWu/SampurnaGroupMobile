import 'package:flutter/material.dart';

//Color 
import 'package:sampurnagroupmobile/constants.dart';

//schedule 
import 'package:sampurnagroupmobile/schedule-sj/schedule_driver.dart';

//camera
import 'package:image_picker/image_picker.dart';
import 'package:flutter/services.dart';
import 'dart:io';

class TestingDetail extends StatefulWidget {
  final int sDriverId;
  const TestingDetail({Key? key, required this.sDriverId}) : super(key: key);

  @override
  State<TestingDetail> createState() => _TestingDetailState();
}

class _TestingDetailState extends State<TestingDetail> {
  
  File? image;

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);

      if(image == null) return;

      final imageTemp = File(image.path);

      setState(() => this.image = imageTemp);
    } on PlatformException catch(e) {
      print('Failed to pick image: $e');
    }
  }

  Future pickImageC() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);

      if(image == null) return;

      final imageTemp = File(image.path);

      setState(() => this.image = imageTemp);
    } on PlatformException catch(e) {
      print('Failed to pick image: $e');
    }
  }


  @override 
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<ScheduleDriver> scheduleList = ScheduleDriver.scheduleList;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.fromLTRB(5, 25, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
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
                    Padding(
                      padding: const EdgeInsets.all(10.0),
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
                          Column(
                            children: [
                              Row(
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
                            ],
                          ),
                          Column(
                            children: [
                              Row(
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
                            ],
                          ),
                          Column(
                            children: [
                              Row(
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
                            ],
                          ),
                          Column(
                            children: [
                              Row(
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
                            ],
                          ),
                          Column(
                            children: [
                              Row(
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
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: size.width * 0.5,
                                    child: ScheduleFeature(
                                      title: 'Group Perusahaan',
                                      scheduleFeature:
                                          scheduleList[widget.sDriverId].grup,
                                    ),
                                  ),
                                  Container(
                                    width: size.width * 0.1,
                                        child: Image.asset(
                                          scheduleList[widget.sDriverId].imageURL, scale: 2, cacheWidth: 100,),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                child: ListView(
                                  shrinkWrap: true,
                                  children: [
                                    const SizedBox(width: 40),
                                    image != null ? Image.file(image!): const Text('No image selected', textAlign: TextAlign.center),
                                    // const SizedBox(height: 20),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        OutlinedButton(
                                          style: ButtonStyle(
                                            side: MaterialStateProperty.all(BorderSide(
                                              color: Constants.blackColor,
                                              width: 1.0,
                                              style: BorderStyle.solid)),
                                          ),
                                          child: const Text(
                                            "Gallery",
                                            style: TextStyle(
                                              color: Colors.black, fontWeight: FontWeight.bold
                                            ),
                                          ),
                                          onPressed: () {
                                            pickImage();
                                          }, 
                                        ),
                                        OutlinedButton(
                                          style: ButtonStyle(
                                            side: MaterialStateProperty.all(BorderSide(
                                              color: Constants.blackColor,
                                              width: 1.0,
                                              style: BorderStyle.solid)),
                                          ),
                                          child: const Text(
                                            "Gallery",
                                            style: TextStyle(
                                              color: Colors.black, fontWeight: FontWeight.bold
                                            ),
                                          ),
                                          onPressed: () {
                                            pickImageC();
                                          }, 
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Column(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
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