import 'package:flutter/material.dart';
import 'package:sampurnagroupmobile/Final_Menu/currentPass.dart';

class Profile extends StatefulWidget {
  static const routeName = "/profile";

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          //for circle avtar image
          SizedBox(
            height: 25,
          ),
          _getHeader(),
          SizedBox(
            height: 10,
          ),
          _profileName("Your Name"),
          SizedBox(
            height: 14,
          ),
          _heading("Informasi Pribadi"),
          SizedBox(
            height: 6,
          ),
          _detailsCard(),
          SizedBox(
            height: 10,
          ),
          _heading("Pengaturan"),
          SizedBox(
            height: 6,
          ),
          _settingsCard(context),
          Spacer(),
          logoutButton()
        ],
      )),
    );
  }

  Widget _getHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                //borderRadius: BorderRadius.all(Radius.circular(10.0)),
                shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        "https://media.licdn.com/dms/image/C5103AQGzyvSyfg63lQ/profile-displayphoto-shrink_800_800/0/1544145099260?e=2147483647&v=beta&t=dqIqGJ9MoqsuqZQm_Hrqr12-PCuiP94ek_q44Yap5uE"))
                // color: Colors.orange[100],
                ),
          ),
        ),
      ],
    );
  }

  Widget _profileName(String name) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.80, //80% of width,
      child: Center(
        child: Text(
          name,
          style: TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.w800),
        ),
      ),
    );
  }

  Widget _heading(String heading) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.80, //80% of width,
      child: Text(
        heading,
        style: TextStyle(fontSize: 16),
      ),
    );
  }

  Widget _detailsCard() {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        child: Column(
          children: [
            //row for each deatails
            ListTile(
              leading: Icon(Icons.email_outlined),
              iconColor: Color.fromARGB(255, 214, 137, 0),
              contentPadding: EdgeInsets.only(left: 15.0),
              title: Text("SMS@gmail.com"),
            ),
            Divider(
              height: 0.6,
              color: Colors.black87,
            ),
            ListTile(
              leading: Icon(Icons.local_phone_outlined),
              iconColor: Color.fromARGB(255, 214, 137, 0),
              title: Text("081245678245"),
            ),
          ],
        ),
      ),
    );
  }

  Widget _settingsCard(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        // elevation: 4,
        child: Column(
          children: [
            //row for each deatails
            ListTile(
              leading: Icon(Icons.lock_outline),
              iconColor: Color.fromARGB(255, 214, 137, 0),
              title: Text("Ganti Sandi"),
              onTap: () {
            Navigator.push(
                context,
                  MaterialPageRoute(
                      builder: (context) => CurrentPass(),
                  ),
                );
              },
            ),
            Divider(
              height: 0.6,
              color: Colors.black87,
            ),
            ListTile(
              leading: Icon(Icons.space_dashboard_outlined),
              iconColor: Color.fromARGB(255, 214, 137, 0),
              title: Text("Tentang kami"),
            ),
          ],
        ),
      ),
    );
  }

  Widget logoutButton() {
    return InkWell(
      onTap: () {},
      child: Container(
          color: Color.fromARGB(255, 214, 137, 0),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                SizedBox(width: 10),
                Text(
                  "Logout",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )
              ],
            ),
          )),
    );
  }
}