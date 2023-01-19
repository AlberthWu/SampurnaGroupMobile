import 'package:flutter/material.dart';
import 'package:sampurnagroupmobile/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Nexa'),
      home: const OnboardingScreen(),
    );
  }
}

// ignore: must_be_immutable
// class MyHomePage extends StatelessWidget {
//   List<Mycard> mycard = [
//     Mycard(Icons.person_outline, 'Employee', true),
//     Mycard(Icons.person_search_outlined, 'Occupation', false),
//     Mycard(Icons.account_balance, 'Finance', false),
//     Mycard(Icons.point_of_sale_outlined, 'Sales', false),
//     Mycard(Icons.people_outline, 'Customer', false),
//     Mycard(Icons.phone_enabled_outlined, 'Customer Care', false),
//   ];

//   MyHomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xfff6f7f9),
//       appBar: AppBar(
//         title: const Text('Sampurna Group'),
//       ),
//       body: Column(
//         children: <Widget>[
//           const Padding(
//             padding: EdgeInsets.all(8.0),
//             child: Text(
//               'Choose your area',
//               style: TextStyle(
//                 fontSize: 30,
//                 color: Colors.black54,
//               ),
//             ),
//           ),
//           Expanded(
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: GridView.count(
//                 crossAxisCount: 2,
//                 crossAxisSpacing: 8,
//                 mainAxisSpacing: 8,
//                 children: mycard
//                     .map(
//                       (e) => InkWell(
//                         onTap: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(builder: (_) => Employee()),
//                           );
//                         },
//                         child: Card(
//                           color: e.isActive ? const Color.fromARGB(255, 0, 0, 0) : null,
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: <Widget>[
//                               Icon(
//                                 e.icon,
//                                 size: 50,
//                                 color: e.isActive
//                                     ? Colors.white
//                                     : const Color.fromARGB(255, 0, 0, 0),
//                               ),
//                               const SizedBox(height: 10),
//                               Text(
//                                 e.title,
//                                 style: TextStyle(
//                                     color: e.isActive
//                                         ? Colors.white
//                                         : Colors.grey),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     )
//                     .toList(),
//               ),
//             ),
//           )
//         ],
//       ),
//       bottomNavigationBar: const Homepage(),
//     );
//   }
// }

// class Mycard {
//   // ignore: prefer_typing_uninitialized_variables
//   final icon;
//   // ignore: prefer_typing_uninitialized_variables
//   final title;
//   bool isActive = false;

//   Mycard(this.icon, this.title, this.isActive);
// }