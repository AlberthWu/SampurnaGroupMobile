import 'package:flutter/material.dart';

List<SampurnaIcon> SGIcons = [
  SampurnaIcon(icon: 'time', title: 'Lembur'),
  SampurnaIcon(icon: 'attendance', title: 'Kehadiran'),
  SampurnaIcon(icon: 'slip', title: 'Slip Gaji')
];

class SampurnaIcon {
  final String icon;
  final String title;

  SampurnaIcon({required this.icon, required this.title});
}