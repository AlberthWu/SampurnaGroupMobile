// import 'dart:html';

// import 'package:flutter/material.dart';

// class formInputSJ extends StatefulWidget {
//   const formInputSJ({Key? key}) : super(key: key);

//   @override
//   State<formInputSJ> createState() => _formInputSJState();

// }

// class _formInputSJState extends State<formInputSJ> {

//   //Variables
//   final _informasiKaryawanController = TextEditingController();
//   final _informasiNIKController = TextEditingController();
//   final _informasiAliasController = TextEditingController();

//   @override
//   void dispose() {
//     _informasiKaryawanController.dispose();
//     _informasiNIKController.dispose();
//     _informasiAliasController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text(
//           'Input Surat Jalan'
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 30.0),
//         child: Column(
//           children: <Widget>[
//             SizedBox(height: 20.0),
//             ExpansionTile(
//               title: Text(
//                 "Input",
//                 style: TextStyle(
//                   fontSize: 18.0,
//                   fontWeight: FontWeight.bold
//                 ),
//               ),
//               children: <Widget>[
//                 ExpansionTile(
//                   title: Text(
//                     'Batang'
//                   ),
//                   children: [
//                     MyTextField(

//                       // fieldName: fieldName, 
//                       // myController: myController
//                     ),
//                   ],
//                   // children: <Widget>[
//                   //   ListTile(
//                   //     title: Text(
//                   //       'Batang'
//                   //     ),
                      
//                   //   ),
//                   // ],
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// //Custom Stateless Widget Class that helps re-usability
// class MyTextField extends StatelessWidget {
//   const MyTextField({
//     Key? key,
//     required this.fieldName,
//     required this.myController,
//     this.myIcon = Icons.people_alt_outlined,
//     this.prefixIconColor = const Color.fromARGB(255, 187, 187, 187), 
//   }) : super(key: key);

//   final TextEditingController myController;
//   final String fieldName;
//   final IconData myIcon;
//   final Color prefixIconColor;

//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       controller: myController,
//       decoration: InputDecoration(
//         labelText: fieldName,
//         prefixIcon: Icon(myIcon, color: prefixIconColor),
//         border: const OutlineInputBorder(),
//         focusedBorder: const OutlineInputBorder(
//           borderSide: BorderSide(color: Color.fromARGB(255, 214, 137, 0)),
//       ),
//       labelStyle: const TextStyle(color: Colors.black),
//     ));
//   }
// }

  