import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 60,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_back_ios),
                    Row(
                      children: [
                        Icon(Icons.search),
                        SizedBox(
                          width: 30,
                        ),
                        Icon(Icons.mail_outline),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Text.rich(TextSpan(children: [
                  TextSpan(
                      text: "SPECIAL ",
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontFamily: "Nexa",
                          fontSize: 14,
                          letterSpacing: 6)),
                  TextSpan(
                      text: "  -------------",
                      style: TextStyle(letterSpacing: -1, fontSize: 14))
                ])),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Text(
                  "Peace Lily",
                  style: TextStyle(
                      fontWeight: FontWeight.w100,
                      fontSize: 30,
                      fontFamily: "Nexa"),
                ),
              ),
              Container(
                height: 370,
                width: double.infinity,
                child: Stack(
                  children: [
                    Container(
                      height: 350,
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              alignment: Alignment.centerLeft,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                        "assets/images/truck-one.png",
                                      ),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.bottomLeft,
                                      colors: [
                                    Color(0xfff2f5f3),
                                    Color(0xfff2f5f3),
                                    Colors.white,
                                    Colors.white
                                  ])),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "PRICE",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: "Nexa"),
                                  ),
                                  Text(
                                    "\$12.95",
                                    style: TextStyle(
                                        fontFamily: "Nexa",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    "COLOR",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: "Nexa"),
                                  ),
                                  Text(
                                    "White",
                                    style: TextStyle(
                                        fontFamily: "Nexa",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    "TYPE",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: "Nexa"),
                                  ),
                                  Text(
                                    "Indoor",
                                    style: TextStyle(
                                        fontFamily: "Nexa",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      right: 40,
                      bottom: 5,
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xff033612)),
                        child: Icon(
                          Icons.favorite,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Overview",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[900],
                        fontFamily: "Nexa",
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                        style: TextStyle(
                            color: Colors.grey,
                            fontFamily: "Nexa",
                            fontSize: 13,
                            fontWeight: FontWeight.w200)),
                  ],
                ),
              ),
              Container(
                height: 120,
                margin:
                    EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 20),
                width: double.infinity,
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      color: Colors.grey, width: 0.8)),
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.timelapse),
                                  Text(
                                    "Medium",
                                    style: TextStyle(fontFamily: "Nexa"),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      color: Colors.grey, width: 0.8)),
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.brightness_7_outlined),
                                  Text(
                                    "12 Sunny",
                                    style: TextStyle(fontFamily: "Nexa"),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      color: Colors.grey, width: 0.8)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(Icons.home_outlined),
                                  Text(
                                    "Indoor",
                                    style: TextStyle(fontFamily: "Nexa"),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.grey, width: 0.8)),
                        child: Text(
                          "ADD TO CART",
                          style: TextStyle(
                              fontFamily: "Nexa",
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}