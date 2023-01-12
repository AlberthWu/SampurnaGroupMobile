import 'package:flutter/material.dart';
import 'package:sampurnagroupmobile/components/my_employeedetail.dart';

class EmployeeList extends StatelessWidget {
  const EmployeeList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCFAF8),
      body: ListView(
        children: <Widget>[
          const SizedBox(height: 15.0),
          Container(
              padding: const EdgeInsets.only(right: 15.0),
              width: MediaQuery.of(context).size.width - 30.0,
              height: MediaQuery.of(context).size.height - 50.0,
              child: GridView.count(
                crossAxisCount: 2,
                primary: false,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 15.0,
                childAspectRatio: 0.8,
                children: <Widget>[
                  _buildCard('Your Name', 'Driver', 'images/person.png',
                      false, false, context),
                  // _buildCard('People2', 'Driver', 'images/person.png',
                  //     true, false, context),
                  // _buildCard('People3', 'Driver','images/person.png', 
                  //     false, true, context),
                  // _buildCard('People4', 'Driver', 'images/person.png',
                  //     false, false, context)
                ],
              )),
          const SizedBox(height: 15.0)
        ],
      ),
    );
  }

  Widget _buildCard(String name, String occupation, String imgPath, bool added,
      bool isFavorite, context) {
    return Padding(
        padding: const EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
        child: InkWell(
            onTap: () {
              // ignore: prefer_typing_uninitialized_variables
              var ocuppation;
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => EmployeeDetail(
                    assetPath: imgPath,
                    occupationemployee: ocuppation,
                    employeename: name,
                  )));
            },
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 3.0,
                          blurRadius: 5.0)
                    ],
                    color: Colors.white),
                child: Column(children: [
                  Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            isFavorite
                                ? const Icon(Icons.bookmark, color: Color.fromARGB(255, 0, 0, 0))
                                : const Icon(Icons.bookmark_border,
                                    color: Color.fromARGB(255, 0, 0, 0))
                          ])),
                  Hero(
                      tag: imgPath,
                      child: Container(
                          height: 75.0,
                          width: 75.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(imgPath),
                                  fit: BoxFit.contain)))),
                  const SizedBox(height: 7.0),
                  Text(occupation,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontFamily: 'Nexa',
                          fontSize: 14.0)),
                  Text(name,
                      style: const TextStyle(
                          color: Color(0xFF575E67),
                          fontFamily: 'Nexa',
                          fontSize: 14.0)),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(color: const Color(0xFFEBEBEB), height: 1.0)),
                  // Padding(
                  //     padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                  //     child: Row(
                  //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //         children: [
                  //           if (!added) ...[
                  //             const Icon(Icons.shopping_basket,
                  //                 color: Color.fromARGB(255, 0, 0, 0), size: 12.0),
                  //             const Text('Add to cart',
                  //                 style: TextStyle(
                  //                     fontFamily: 'Nexa',
                  //                     color: Color.fromARGB(255, 0, 0, 0),
                  //                     fontSize: 12.0))
                  //           ],
                  //           if (added) ...[
                  //             const Icon(Icons.remove_circle_outline,
                  //                 color: Color.fromARGB(255, 0, 0, 0), size: 12.0),
                  //             const Text('3',
                  //                 style: TextStyle(
                  //                     fontFamily: 'Nexa',
                  //                     color: Color.fromARGB(255, 0, 0, 0),
                  //                     fontWeight: FontWeight.bold,
                  //                     fontSize: 12.0)),
                  //             const Icon(Icons.add_circle_outline,
                  //                 color: Color.fromARGB(255, 0, 0, 0), size: 12.0),
                  //           ]
                  //         ]))
                ]))));
  }
}