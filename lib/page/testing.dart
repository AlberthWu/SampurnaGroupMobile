// import 'package:flutter/material.dart';

// class Tested extends StatefulWidget {

//   @override
//   State<Tested> createState() => _TestedState();
// }

// class _TestedState extends State<Tested> {
// String?selectedValue;

// @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       initialIndex: 1,
//       length: 4,
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Text('TabBar Widget'),
//           bottom: TabBar(
//             tabs: <Widget>[
//               Tab(
//                 text: 'Swap',
//               ),
//               Tab(
//                 text: 'Swap',
//               ),
//               Tab(
//                 text: 'Swap',
//               ),
//               DropdownButton<String?>(
//                 value: selectedValue,
//                 onChanged: (value) {
//                   setState(() {
//                     selectedValue = value;
//                   });
//                   print("value");
//                 },
//                 items: ["Open", "Close", "Loading"]
//                     .map(
//                       (e) => DropdownMenuItem(
//                         child: Text(e),
//                         value: e,
//                       ),
//                     )
//                     .toList(),
//               ),
//             ],
//           ),
//         ),
//         body: TabBarView(
//           children: <Widget>[
//             Center(
//               child: Text("It's cloudy here"),
//             ),
//             Center(
//               child: Text("It's rainy here"),
//             ),
//             Center(
//               child: Text("It's sunny here"),
//             ),
//             Center(
//               child: Text("TabBar here ${selectedValue ?? "select 1st"}"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }