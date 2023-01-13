// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:sampurnagroupmobile/components/my_employeelist.dart';
import 'package:sampurnagroupmobile/components/my_bottombar.dart';
// import 'package:sampurnagroupmobile/index.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF545D68)),
          onPressed: () {},
        ),
        title: const Text('Sampurna Group',
            style: TextStyle(
                fontFamily: 'Nexa',
                fontSize: 20.0,
                color: Color(0xFF545D68))),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notifications_none, color: Color(0xFF545D68)),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(left: 20.0),
        children: <Widget>[
          const SizedBox(height: 10.0),
          const Text('Employee',
              style: TextStyle(
                  fontFamily: 'Nexa',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold)),
          const SizedBox(height: 10.0),
          // TabBar(
          //     controller: _tabController,
          //     indicatorColor: Colors.transparent,
          //     labelColor: const Color.fromARGB(255, 0, 0, 0),
          //     isScrollable: true,
          //     labelPadding: const EdgeInsets.only(right: 45.0),
          //     unselectedLabelColor: const Color(0xFFCDCDCD),
          //     tabs: const [
          //       Tab(
          //         child: Text('Person',
          //             style: TextStyle(
          //               fontFamily: 'Nexa',
          //               fontSize: 21.0,
          //             )),
          //       ),
          //       Tab(
          //         child: Text('Person',
          //             style: TextStyle(
          //               fontFamily: 'Nexa',
          //               fontSize: 21.0,
          //             )),
          //       ),
          //       Tab(
          //         child: Text('Person',
          //             style: TextStyle(
          //               fontFamily: 'Nexa',
          //               fontSize: 21.0,
          //             )),
          //       )
          //     ]),
              SizedBox(
                height: MediaQuery.of(context).size.height - 50.0,
                width: double.infinity,
                child: TabBarView(controller: _tabController,children: const [
                    EmployeeList(),
                    EmployeeList(),
                    EmployeeList(),
                  ],
                )
              )
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {},
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      child: const Icon(Icons.fire_truck_outlined),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const BottomBar(),
    );
  }
}