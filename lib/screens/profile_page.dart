import 'package:flutter/material.dart';
import 'package:sampurnagroupmobile/constants.dart';
import 'package:sampurnagroupmobile/screens/profile_widget.dart';



class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(16),
        height: size.height,
        width: size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 56,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Constants.primaryColor.withOpacity(.5),
                  width: 2.0,
                ),
              ),
              child: const CircleAvatar(
                radius: 27,
                backgroundImage: ExactAssetImage('assets/images/person.png', scale: 0.5),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            SizedBox(
              width: size.width * .375,
              child: Row(
                children: [
                  Text(
                    'John Doe',
                    style: TextStyle(
                      color: Constants.blackColor,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                      height: 28,
                      child: Image.asset("assets/images/verified.png")),
                ],
              ),
            ),
            // Text(
            //   'johndoe@gmail.com',
            //   style: TextStyle(
            //     color: Constants.blackColor.withOpacity(.3),
            //   ),
            // ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: size.height * .4,
              width: size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  ProfileWidget(
                    icon: Icons.person,
                    title: 'My Profile',
                  ),
                  ProfileWidget(
                    icon: Icons.settings,
                    title: 'Settings',
                  ),
                  ProfileWidget(
                    icon: Icons.notifications,
                    title: 'Notifications',
                  ),
                  ProfileWidget(
                    icon: Icons.chat,
                    title: 'FAQs',
                  ),
                  ProfileWidget(
                    icon: Icons.share,
                    title: 'Share',
                  ),
                  ProfileWidget(
                    icon: Icons.logout,
                    title: 'Log Out',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}