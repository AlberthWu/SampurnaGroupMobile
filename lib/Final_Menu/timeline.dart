// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:sampurnagroupmobile/constants.dart';
import 'package:vertical_stepper/vertical_stepper.dart';
import 'package:vertical_stepper/vertical_stepper.dart' as step;

class TrackRoad extends StatefulWidget {
  const TrackRoad({Key? key}) : super(key: key);

  @override
  _TrackRoadState createState() => _TrackRoadState();
}

class _TrackRoadState extends State<TrackRoad> with TickerProviderStateMixin {
  bool result = false;

  List<step.Step> steps = [
    step.Step(
      shimmer: false,
      title: "Pool",
      iconStyle: Constants.blackColor,
      content: Padding(
        padding: const EdgeInsets.only(left: 5),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text("Tahapan pengecekan rutin"),
        ),
      ),
    ),
    step.Step(
      shimmer: false,
      title: "Pool2",
      iconStyle: Constants.blackColor,
      content: Padding(
        padding: const EdgeInsets.only(left: 5),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text("Tahapan pengecekan rutin"),
        ),
      ),
    ),
    step.Step(
      shimmer: false,
      title: "Rumpin",
      iconStyle: Constants.blackColor,
      content: Padding(
        padding: const EdgeInsets.only(left: 5),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text("Tahapan angkut barang"),
        ),
      ),
    ),
    step.Step(
      shimmer: false,
      title: "Office",
      iconStyle: Constants.blackColor,
      content: Padding(
        padding: const EdgeInsets.only(left: 5),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text("Tahap Pendataan"),
        ),
      ),
    ),
    step.Step(
      shimmer: false,
      title: "Customer",
      iconStyle: Colors.green,
      content: Padding(
        padding: const EdgeInsets.only(left: 5),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text("Telah Diterima Oleh Customer"),
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: content(),
    );
  }

  Widget content() {
    return Column(
      children: [
        Container(
          height: 300,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
            ),
          ),
          child: Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Column(children: [
                Image.asset(
                  "trailer.png",
                  height: 200,
                ),
                Text(
                  "Transport Tracking",
                  style: TextStyle(fontSize: 30),
                )
              ]),
            ),
          ),
        ),
        body()
      ],
    );
  }

  Widget body() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 35.0),
          child: Text(
            "Tracking Number :",
            style: TextStyle(fontSize: 16),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 0, 20, 0),
          child: Row(
            children: [
              Container(
                height: 60,
                width: 310,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      hintText: "e.g #4556245521145"),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    result=true;
                    });
                },
                child: Icon(
                  Icons.search,
                  size: 35,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        result? Padding(
          padding: const EdgeInsets.fromLTRB(35, 2, 31, 0),
          child: Row(
            children: [
              Text(
                "Update Terbaru",
                style: TextStyle(fontSize: 25),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  setState(() {
                    result=false;
                  });
                },
                child: Icon(
                  Icons.close,
                  size: 25,
                ),
              )
            ],
          ),
        )
        :SizedBox(),
        SizedBox(
          height: 5,
        ),
        // result? 
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 2, 15, 0),
          child: VerticalStepper(
            steps: steps,
            dashLength: 2,
          ),
        )
        // : Transform(
        //   transform: Matrix4.translationValues(0, -50, 0),
        //   child: Lottie.network(
        //     "https://assets2.lottiefiles.com/packages/lf20_t24tpvcu.json"
        //   ),
        // )
      ],
    );
  }
}