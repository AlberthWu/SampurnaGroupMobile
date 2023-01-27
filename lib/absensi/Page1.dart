import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:latlong2/latlong/Circle.dart';
import 'package:latlong2/latlong/Distance.dart';
import 'package:latlong2/latlong/LatLng.dart';
import 'package:latlong2/latlong/LengthUnit.dart';
import 'package:latlong2/latlong/Path.dart';
import 'package:latlong2/latlong/calculator/Haversine.dart';
import 'package:latlong2/latlong/calculator/Vincenty.dart';
import 'package:latlong2/latlong/interfaces.dart';
import 'package:latlong2/spline.dart';
import 'package:latlong2/spline/CatmullRomSpline.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  _Page1State createState() => _Page1State();
  
  // @override
  // Widget build(BuildContext context) {
  // ignore: todo
  //   // TODO: implement build
  //   throw UnimplementedError();
  // }
}

class _Page1State extends State<Page1> {
  @override
    Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: const Text("Sampurna Group"),
        ),
      ),
      body: FlutterMap(options: MapOptions(
        center: 
      )),
    );
  }
}