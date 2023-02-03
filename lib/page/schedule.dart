import 'package:flutter/material.dart';
import 'package:sampurnagroupmobile/constants.dart';

class ScheduleSJ extends StatefulWidget {
  const ScheduleSJ({super.key});

  @override
  _ScheduleSJState createState() => _ScheduleSJState();
}

class _ScheduleSJState extends State<ScheduleSJ> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 174, 0, 0),
        title: const Text("Schedule"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          color: Constants.primaryColor,
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const topRow(),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                    7, 
                    (index) => dateWidget(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class dateWidget extends StatefulWidget {


  @override
  State<dateWidget> createState() => _dateWidgetState();
}

class _dateWidgetState extends State<dateWidget> {
  bool _selectDate = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          _selectDate = !_selectDate;
        });
      },
      child: Container(
        decoration: _selectDate 
          ? null 
          : BoxDecoration(
            color: Constants.whiteColor,
            borderRadius: const BorderRadius.all(Radius.circular(4.0),
            ),
          ),
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Text(
              "Su", 
              style: TextStyle(
                fontWeight: _selectDate ? FontWeight.normal : FontWeight.bold,
                color: _selectDate ? Constants.buttonColor : Constants.buttonColor,
              ),
            ),
            Text(
              "1", 
              style: TextStyle(
                fontWeight: _selectDate ? FontWeight.normal : FontWeight.bold,
                color: _selectDate ? Constants.buttonColor : Constants.buttonColor,
              ),
            ),
            Container(
              width: 4.0,
              height: 4.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _selectDate ? Constants.whiteColor : Constants.primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class topRow extends StatelessWidget {
  const topRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
      Row(
      children: <Widget>[
        Text(
          "Schedule",
          style: TextStyle(
            color: Constants.whiteColor,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(width: 8.0),
        Text(
          "Surat Jalan",
          style: TextStyle(
            color: Constants.whiteColor.withOpacity(0.7),
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    const Spacer(),
        Text(
          "Jan",
          style: TextStyle(
            color: Constants.whiteColor,
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}