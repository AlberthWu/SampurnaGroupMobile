// import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sampurnagroupmobile/constants.dart';
// import 'package:sampurnagroupmobile/constants.dart';
import 'package:sampurnagroupmobile/page/colors_utils.dart';
import 'package:sampurnagroupmobile/page/date_utils.dart' as date_util;

class ScheduleSurat extends StatefulWidget {
  final String title;
  const ScheduleSurat({Key? key, required this.title}) : super(key: key);

  @override
  _ScheduleSuratState createState() => _ScheduleSuratState();
}

class _ScheduleSuratState extends State<ScheduleSurat> {
  double width = 0.0;
  double height = 0.0;
  late ScrollController scrollController;
  List<DateTime> currentMonthList = List.empty();
  DateTime currentDateTime = DateTime.now();
  List<String> todos = <String>[];
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    currentMonthList = date_util.DateUtils.daysInMonth(currentDateTime);
    currentMonthList.sort((a, b) => a.day.compareTo(b.day));
    currentMonthList = currentMonthList.toSet().toList();
    scrollController =
        ScrollController(initialScrollOffset: 70.0 * currentDateTime.day);
    super.initState();
    
  }

  Widget backgroundView() {
    return Container(
      decoration: BoxDecoration(
        color: HexColor("#00000"),
        // image: DecorationImage(
        //   image: const AssetImage("assets/images/bg.png"),
        //   fit: BoxFit.cover,
        //   colorFilter: ColorFilter.mode(
        //       Colors.black.withOpacity(0.2), BlendMode.lighten),
        // ),
      ),
    );
  }

  Widget titleView() {
    return Row(
      children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
        children: <Widget>[
          Text(
            "Schedule",
            style: TextStyle(
              color: Constants.buttonColor,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 8.0),
          Text(
            "Surat Jalan",
            style: TextStyle(
              color: Constants.buttonColor.withOpacity(0.7),
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
    ),
      ),
    const Spacer(),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          date_util.DateUtils.months[currentDateTime.month - 1] +
              ' ' +
            currentDateTime.year.toString(),
            style: TextStyle(
              color: Constants.primaryColor,
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  Widget hrizontalCapsuleListView() {
    return SizedBox(
      width: width,
      height: 155,
      child: ListView.builder(
        controller: scrollController,
        scrollDirection: Axis.horizontal,
        physics: const ClampingScrollPhysics(),
        shrinkWrap: true,
        itemCount: currentMonthList.length,
        itemBuilder: (BuildContext context, int index) {
          return capsuleView(index);
        },
      ),
    );
  }

  Widget capsuleView(int index) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(15, 75, 0, 20),
        child: GestureDetector(
          onTap: () {
            setState(() {
              currentDateTime = currentMonthList[index];
            });
          },
          child: Container(
            width: 50,
            height: 200,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: (currentMonthList[index].day != currentDateTime.day)
                        ? [
                            Colors.white.withOpacity(0.8),
                            Colors.white.withOpacity(0.8),
                            Colors.white.withOpacity(0.8)
                          ]
                        : [
                            HexColor("AE0000"),
                            HexColor("AE0000"),
                            HexColor("AE0000")
                          ],
                    begin: const FractionalOffset(0.0, 0.0),
                    end: const FractionalOffset(0.0, 1.0),
                    stops: const [0.0, 0.5, 1.0],
                    tileMode: TileMode.clamp),
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(4, 4),
                    blurRadius: 4,
                    spreadRadius: 2,
                    color: Colors.black12,
                  )
                ]),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    currentMonthList[index].day.toString(),
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color:
                            (currentMonthList[index].day != currentDateTime.day)
                                ? HexColor("AE0000")
                                : Colors.white),
                  ),
                  Text(
                    date_util.DateUtils
                        .weekdays[currentMonthList[index].weekday - 1],
                    style: TextStyle(
                        fontSize: 9,
                        fontWeight: FontWeight.bold,
                        color:
                            (currentMonthList[index].day != currentDateTime.day)
                                ? HexColor("D68900")
                                : Colors.white),
                  )
                ],
              ),
            ),
          ),
        ));
  }

  Widget topView() {
    return Container(
      height: height * 0.32,
      width: width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [
              HexColor("FFFFFF"),
              HexColor("FFFFFF"),
              HexColor("FFFFFF")
            ],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(0.0, 1.0),
            stops: const [0.0, 0.5, 1.0],
            tileMode: TileMode.clamp),
      ),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            titleView(),
            hrizontalCapsuleListView(),
          ]),
    );
  }

  Widget floatingActionBtn() {
    return Align(
      alignment: Alignment.bottomRight,
      child: FloatingActionButton(
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                  colors: [
                    HexColor("AE0000"),
                    HexColor("AE0000"),
                    HexColor("AE0000")
                  ],
                  begin: const FractionalOffset(0.0, 0.0),
                  end: const FractionalOffset(0.0, 1.0),
                  stops: const [0.0, 0.5, 1.0],
                  tileMode: TileMode.clamp)),
          child: const Icon(
            Icons.add,
            size: 30,
          ),
        ),
        onPressed: () {
          controller.text = "";
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return Dialog(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Container(
                    height: 200,
                    width: 320,
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Schedule Surat Jalan",
                          style: TextStyle(
                              color: Color.fromARGB(255, 174, 0, 0),
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        TextField(
                          controller: controller,
                          style: const TextStyle(color: Colors.black),
                          autofocus: true,
                          decoration: const InputDecoration(
                              hintText: 'Add your schedule',
                              hintStyle: TextStyle(color: Colors.black),
                              border: OutlineInputBorder(),
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Color.fromARGB(255, 214, 137, 0)),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: 320,
                          child: OutlinedButton(
                            style: ButtonStyle(
                              side: MaterialStateProperty.all(BorderSide(
                                color: const Color.fromARGB(255, 214, 137, 0),
                                width: 1.0,
                                style: BorderStyle.solid)),
                            ),
                            onPressed: () {
                              setState(() {
                                todos.add(controller.text);
                              });
                              Navigator.of(context).pop();
                            },
                            child: const Text(
                              "Add", 
                              style: TextStyle(
                                color: const Color.fromARGB(255, 174, 0, 0), fontWeight: FontWeight.bold
                            )),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              });
        },
      ),
    );
  }

  Widget todoList() {
    return Container(
      margin: EdgeInsets.fromLTRB(10, height * 0.38, 10, 10),
      width: width,
      height: height * 0.80,
      child: ListView.builder(
          itemCount: todos.length,
          padding: EdgeInsets.zero,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
              width: width - 30,
              height: 50,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 174, 0, 0),
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.white12,
                        blurRadius: 2,
                        offset: Offset(2, 2),
                        spreadRadius: 3)
                  ]),
              child: Center(
                child: Text(
                  todos[index],
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            );
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 174, 0, 0),
        title: const Text("Schedule"),
        centerTitle: true,
      ),
        body: Stack(
          children: <Widget>[
            backgroundView(), 
            topView(),
            todoList()
          ],
        ),
        floatingActionButton: floatingActionBtn());
  }
}
