import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sampurnagroupmobile/constants.dart';
// import 'package:sampurnagroupmobile/Final_Menu/Models/history_models.dart';
// import 'package:setting/SettingUI/history/history/screens/history1.dart';

class history extends StatefulWidget {
  const history({Key? key}) : super(key: key);

  @override
  _historyState createState() => _historyState();
}

class _historyState extends State<history> with SingleTickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Activity'),
        backgroundColor: Constants.primaryColor,
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                          margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Constants.whiteColor,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Container(
                                  margin: const EdgeInsets.only(left: 10),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(top: 5),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Text(
                                              "B 1572 HJ",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                              ),
                                            ),
                                            const Text(
                                              "To Rumpin",
                                              style: TextStyle(
                                                fontSize: 16,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text("13 Maret 2023"),
                                          const Text(
                                            "Rp 1.000.000",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          ElevatedButton(
                                            child: Text(
                                              'Rincian',
                                              ),
                                              style: ElevatedButton.styleFrom(
                                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
                                                backgroundColor: Constants.primaryColor,
                                                textStyle: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                  fontStyle: FontStyle.normal
                                                ), 
                                              ),
                                              onPressed: () {},
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}