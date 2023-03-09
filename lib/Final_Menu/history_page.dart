import 'package:sampurnagroupmobile/Final_Menu/Models/history_models.dart';
import 'package:flutter/material.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  final List<HistoryModel> historyDummy = [
    HistoryModel(
      rideId: "##asd5698",
      source: "Rumpin",
      destination: "Serpong",
      unit: "Mixer",
      noPol: 'B 9514 NYV',
      grupPT: "PT. Niaga Citra Abadi",
      noSj: 323010005,
      noSc: "CA2301004",
      time: "Today 12:30 pm",
    ),
    HistoryModel(
      rideId: "##asd99699",
      source: "Head Office",
      destination: "Rumpin",
      unit: "Dumptruck - Dutro",
      noPol: 'B 9567 NYV',
      grupPT: "PT. Niaga Citra Abadi",
      noSj: 323010067,
      noSc: "CA2301056",
      time: "Today 12:15 pm",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: ListView.builder(
        itemBuilder: (_, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Card(
              elevation: 10,
              child: Container(
                padding: const EdgeInsets.all(6),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/asmlogo.png",
                      fit: BoxFit.cover,
                      height: 70,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 85,
                        ),
                        Icon(Icons.location_on_outlined),
                        SizedBox(
                          height: 5,
                        ),
                        Icon(Icons.near_me),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          FittedBox(child: Text(historyDummy[index].noPol)),
                          SizedBox(
                            height: 5,
                          ),
                          FittedBox(child: Text(historyDummy[index].unit)),
                          SizedBox(
                            height: 5,
                          ),
                          FittedBox(child: Text(historyDummy[index].grupPT)),
                          SizedBox(
                            height: 5,
                          ),
                          FittedBox(child: Text(historyDummy[index].source)),
                          SizedBox(
                            height: 5,
                          ),
                          FittedBox(child: Text(historyDummy[index].destination)),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        FittedBox(child: Text(historyDummy[index].time)),
                        SizedBox(
                          height: 75,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            print(historyDummy[index].rideId);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 174, 0, 0),
                          ),
                          child: Container(
                            width: 60,
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Center(
                                child: Text("View"),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: historyDummy.length,
      ),
    );
  }
}