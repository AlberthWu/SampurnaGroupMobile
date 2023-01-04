import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 255, 255, 255),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Sampurna Group"),
              const Text("Mulai dari 3 kendaraan di tahun 2012"),
              const Text("hingga kini menjadi ratusan"),
              Padding(
                padding: const EdgeInsets.all(20.0),
                  child: Lottie.network(
                    'https://assets5.lottiefiles.com/private_files/lf30_3lflolyo.json'),
                ),
            ],
          ),
          ),
      ),
    );
  }
}