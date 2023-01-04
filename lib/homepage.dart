import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({ Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text('Home Page'),
      ),
    );
  }
}