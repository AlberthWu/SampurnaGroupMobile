import 'package:flutter/material.dart';
import 'package:sampurnagroupmobile/components/my_textfile.dart';
import 'package:sampurnagroupmobile/components/my_button.dart';
import 'package:sampurnagroupmobile/constants.dart';

class CurrentPass extends StatelessWidget {
  CurrentPass({super.key});

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ganti Kata Sandi"),
        backgroundColor: Constants.primaryColor,
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "Ganti Kata Sandi",
                  style: TextStyle(
                    color: Constants.blackColor, fontWeight: FontWeight.bold, fontSize: 18
                  )
                ),
              ),
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "Kata sandi Anda harus terdiri dari minimal 6 karakter dan harus menyertakan kombinasi angka, huruf, dan karakter khusus (!@%).",
                  style: TextStyle(
                    color: Constants.blackColor, fontWeight: FontWeight.normal, fontSize: 12
                  )
                ),
              ),
              const SizedBox(height: 20),

              // current password textfield
              MyTextField(
                controller: usernameController,
                hintText: 'Kata sandi saat ini',
                obscureText: false,
              ),

              const SizedBox(height: 10),

              // password textfield
              MyTextField(
                controller: passwordController,
                hintText: 'Kata sandi baru',
                obscureText: true,
              ),

                const SizedBox(height: 10),

              // password confirm textfield
              MyTextField(
                controller: confirmController,
                hintText: 'Ketik ulang kata sandi baru',
                obscureText: true,
              ),

              const SizedBox(height: 25),

              // sign in button
              MyButton(
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}