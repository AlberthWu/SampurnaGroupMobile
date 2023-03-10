import 'package:carousel_slider/carousel_slider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:sampurnagroupmobile/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DashboardFinal extends StatelessWidget {
  const DashboardFinal({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);

    final List<Map> menuFavorites = [
      {
        'label': 'Sales',
        'icon': 'assets/images/sales.gif',
        'color': Colors.blueGrey,
        'url': '',
      },
      {
        'label': 'Fleet',
        'icon': 'assets/images/fleet2.gif',
        'color': Colors.green,
        'url': '',
      },
      {
        'label': 'Purchase',
        'icon': 'assets/images/purchase2.gif',
        'color': Colors.blueGrey,
        'url': '',
      },
      {
        'label': 'Finance',
        'icon': 'assets/images/finance.gif',
        'color': Colors.green,
        'url': '',
      },
      {
        'label': 'Payroll',
        'icon': 'assets/images/payroll.gif',
        'color': Colors.blueGrey,
        'url': '',
      },
      {

        'label': 'Employee',
        'icon': 'assets/images/employee.gif',
        'color': Colors.green,
        'url': '',
      },
      {
        'label': 'GPS',
        'icon': 'assets/images/gps.gif',
        'color': Colors.blueGrey,
        'url': '',
      },
      {
        'label': 'More',
        'icon': 'assets/images/more.gif',
        'color': Colors.green,
        'url': '',
      },
    ];

    final List<Map> imageList = [
      {"id":1, "image_path": 'assets/images/testing1.jpg'},
      {"id":2, "image_path": 'assets/images/testing2.jpg'},
      {"id":3, "image_path": 'assets/images/testing3.jpg'},
    ];

    final CarouselController carouselController = CarouselController();
    int currentIndex = 0;

    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
                height: 62.96,
                backgroundColor: Constants.whiteColor,
                color: Constants.primaryColor,
                animationDuration: const Duration(milliseconds: 300),
                onTap: (index){
                  // ignore: avoid_print
                  print(index);
                },
                items: const [
                  Icon(
                    Icons.assignment_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                  Icon(
                    Icons.home_outlined, 
                    color: Colors.white,
                    size: 30,
                  ),
                  Icon(
                    Icons.person_outline, 
                    color: Colors.white,
                    size: 30,
                  ),
                  // Icon(
                  //   Icons.payments_outlined, 
                  //   color: Colors.black,
                  // ),
                  // Icon(
                  //   Icons.person_outline, 
                  //   color: Colors.black,
                  // ), 
                ],
              ),
      body: Container(
        width: size.width,
        height: size.height,
        color: Constants.whiteColor,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: size.height * .23,
              child: Stack(
                children: [
                  Container(
                    height: (size.height * .20) * .8,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                      color: Constants.primaryColor,
                    ),
                  ),
                  Positioned(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 35.0,
                        left: 25.0,
                        bottom: 15.0,
                      ),
                      child: Text(
                        'Semangat Kerja!',
                        style: TextStyle(
                          fontSize: 18,
                          color: Constants.whiteColor,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Nexa',
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 68,
                    left: 30,
                    right: 30,
                    bottom: 0,
                    child: Container(
                      height: (size.height * .25) * .75,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        color: Constants.whiteColor,
                        border: Border.all(
                          width: 1,
                          color: Constants.goldColor,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(22.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: (size.width - 100) * .26,
                              child: Image.asset('assets/images/asmlogo.png'),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: (size.width - 100) * .60,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      const Text(
                                        "Kencana Alberth",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Nexa',
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios_outlined,
                                        color: Constants.buttonColor,
                                        size: 12,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    width: double.infinity,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 10,
                                      vertical: 10,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      color: Constants.primaryColor,
                                    ),
                                    child: Text(
                                      "PT Alam Sampurna Makmur",
                                      style: TextStyle(
                                        color: Constants.whiteColor,
                                        fontSize: 11,
                                        fontFamily: 'Nexa',
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  const Text(
                                    "Information Technology | Manager",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 10,
                                      fontFamily: 'Nexa',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: size.height * .68,
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      height: 100,
                      width: size.width * .8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Constants.primaryColor,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 5),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Constants.whiteColor,
                                      ),
                                      height: 75,
                                      width: 125,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 10),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Row(
                                              children: const [
                                                Icon(
                                                  Icons.more_time_outlined,
                                                  size: 18,
                                                  color: Color.fromARGB(255, 214, 137, 0),
                                                ),
                                                SizedBox(
                                                  width: 5.0
                                                ),
                                                Text(
                                                  'Lembur',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const Text(
                                              '0',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w600
                                              ),
                                            ),
                                          ]),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Constants.whiteColor,
                                      ),
                                      height: 75,
                                      width: 125,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal:10),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Row(
                                              children: const [
                                                Icon(
                                                  Icons.date_range_outlined,
                                                  size: 18,
                                                  color: Color.fromARGB(255, 214, 137, 0),
                                                ),
                                                SizedBox(
                                                  width: 5.0
                                                ),
                                                Text(
                                                  'Saldo Cuti',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const Text(
                                              '0',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w600
                                              ),
                                            ),
                                          ]),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: const SaldoIcons(icons: Icons.timelapse_outlined, text: 'Kehadiran'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: const SaldoIcons(icons: Icons.money_outlined, text: 'Kasbon'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: const SaldoIcons(icons: Icons.file_open_outlined, text: 'Slip Gaji'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: size.height * .30,
                    color: Constants.whiteColor,
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: GridView.builder(
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisSpacing: 2,
                          crossAxisSpacing: 2,
                          crossAxisCount: 4,
                          childAspectRatio: 0.8,
                        ),
                        itemBuilder: (context, index) => Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: Material(
                                  color: Constants.whiteColor,
                                  borderRadius: BorderRadius.circular(16),
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  child: InkWell(
                                    splashColor: menuFavorites[index]['color']
                                        .withOpacity(0.4),
                                    highlightColor: menuFavorites[index]
                                            ['color']
                                        .withOpacity(0.2),
                                    onTap: () {},
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 65,
                                            width: 65,
                                            child: Stack(
                                              children: [
                                                Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Container(
                                                    height: 55,
                                                    width: 55,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          menuFavorites[index]
                                                                  ['color']
                                                              .withOpacity(0.2),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25),
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  child: Image.asset(
                                                    menuFavorites[index]
                                                        ['icon'],
                                                    height: 60,
                                                    width: 60,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Text(menuFavorites[index]['label']),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                        itemCount: menuFavorites.length,
                      ),
                    ),
                  ),
                  // const SizedBox(
                  //   height: 10,
                  // ),
                  Column(
                    children: [
                      Stack(
                        children: [
                          InkWell(
                            onTap: () {
                              print(currentIndex);
                            },
                            child: CarouselSlider(
                              items: imageList
                              .map(
                                (item) => Image.asset(
                                  item['image_path'],
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                ),
                              )
                              .toList(),
                              carouselController: carouselController,
                              options: CarouselOptions(
                                height: 195,
                                scrollPhysics: const BouncingScrollPhysics(),
                                autoPlay: true,
                                autoPlayInterval: Duration(seconds: 3),
                                autoPlayAnimationDuration: Duration(milliseconds: 500),
                                autoPlayCurve: Curves.fastOutSlowIn,
                                aspectRatio: 2,
                                viewportFraction: 1,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SubMenu extends StatelessWidget {
  const SubMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      child: Column(
        children: [
          SizedBox(
            height: 805,
            child: ListView(
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 5),
                        child: Text('SALES',textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),
                      ),
                      Container(
                      child: ExpansionTile(
                        textColor: Constants.buttonColor,
                        iconColor: Constants.buttonColor,
                        title: const Text('Master', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14)),
                        children: [
                          ListTile(
                            contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                            onTap: () {},
                            title: const Text('Pool', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                            leading: const Icon(Icons.house_outlined),
                            iconColor: Constants.primaryColor,
                          ),
                          ListTile(
                            contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                            onTap: () {},
                            title: const Text('Product',style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                            leading: const Icon(Icons.add_box_outlined),
                            iconColor: Constants.primaryColor,
                          ),
                          ListTile(
                            contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                            onTap: () {},
                            title: const Text('Customer', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                            leading: const Icon(Icons.person_outline),
                            iconColor: Constants.primaryColor,
                          ),
                          ListTile(
                            contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                            onTap: () {},
                            title: const Text('Pricelist', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                            leading: const Icon(Icons.monetization_on_outlined),
                            iconColor: Constants.primaryColor,
                          ),
                          ListTile(
                            contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                            onTap: () {},
                            title: const Text('UJT List', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                            leading: const Icon(Icons.money),
                            iconColor: Constants.primaryColor,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: ExpansionTile(
                        textColor: Constants.buttonColor,
                        iconColor: Constants.buttonColor,
                        title: const Text('Office', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14)),
                        children: [
                          ListTile(
                            contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                            onTap: () {},
                            title: const Text('PO Customer', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                            leading: const Icon(Icons.assignment_outlined),
                            iconColor: Constants.primaryColor,
                          ),
                          ListTile(
                            contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                            onTap: () {},
                            title: const Text('Invoice',style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                            leading: const Icon(Icons.description_outlined),
                            iconColor: Constants.primaryColor,
                          ),
                          ListTile(
                            contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                            onTap: () {},
                            title: const Text('Invoice', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                            leading: const Icon(Icons.person_outline),
                            iconColor: Constants.primaryColor,
                          ),
                          ListTile(
                            contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                            onTap: () {},
                            title: const Text('Order Manual Number', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                            leading: const Icon(Icons.monetization_on_outlined),
                            iconColor: Constants.primaryColor,
                          ),
                          ListTile(
                            contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                            onTap: () {},
                            title: const Text('Schedule', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                            leading: const Icon(Icons.money),
                            iconColor: Constants.primaryColor,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: ExpansionTile(
                        textColor: Constants.buttonColor,
                        iconColor: Constants.buttonColor,
                        title: const Text('Order', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14)),
                        children: [
                          ListTile(
                            contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                            onTap: () {},
                            title: const Text('Manual UJT', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                            leading: const Icon(Icons.house_outlined),
                            iconColor: Constants.primaryColor,
                          ),
                          ListTile(
                            contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                            onTap: () {},
                            title: const Text('UJT',style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                            leading: const Icon(Icons.add_box_outlined),
                            iconColor: Constants.primaryColor,
                          ),
                          ListTile(
                            contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                            onTap: () {},
                            title: const Text('Non UJT', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                            leading: const Icon(Icons.person_outline),
                            iconColor: Constants.primaryColor,
                          ),
                          ListTile(
                            contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                            onTap: () {},
                            title: const Text('Moving', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                            leading: const Icon(Icons.monetization_on_outlined),
                            iconColor: Constants.primaryColor,
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                      child: Text('FLEET', textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),
                    ),
                    Container(
                      child: ExpansionTile(
                        textColor: Constants.buttonColor,
                        iconColor: Constants.buttonColor,
                        title: const Text('Master', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14)),
                        children: [
                          ListTile(
                            contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                            onTap: () {},
                            title: const Text('Fleet Type', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                            leading: const Icon(Icons.house_outlined),
                            iconColor: Constants.primaryColor,
                          ),
                          ListTile(
                            contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                            onTap: () {},
                            title: const Text('Fleet',style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                            leading: const Icon(Icons.add_box_outlined),
                            iconColor: Constants.primaryColor,
                          ),
                          ListTile(
                            contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                            onTap: () {},
                            title: const Text('Fleet Formation', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                            leading: const Icon(Icons.person_outline),
                            iconColor: Constants.primaryColor,
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                      child: Text('PURCHASE', textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),
                    ),
                    Container(
                      child: ExpansionTile(
                        textColor: Constants.buttonColor,
                        iconColor: Constants.buttonColor,
                        title: const Text('Master', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14)),
                        children: [
                          ListTile(
                            contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                            onTap: () {},
                            title: const Text('Origin', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                            leading: const Icon(Icons.house_outlined),
                            iconColor: Constants.primaryColor,
                          ),
                          ListTile(
                            contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                            onTap: () {},
                            title: const Text('Transporter',style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                            leading: const Icon(Icons.add_box_outlined),
                            iconColor: Constants.primaryColor,
                          ),
                          ListTile(
                            contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                            onTap: () {},
                            title: const Text('Supplier', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                            leading: const Icon(Icons.person_outline),
                            iconColor: Constants.primaryColor,
                          ),
                          ListTile(
                            contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                            onTap: () {},
                            title: const Text('Sparepart',style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                            leading: const Icon(Icons.add_box_outlined),
                            iconColor: Constants.primaryColor,
                          ),
                          ListTile(
                            contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                            onTap: () {},
                            title: const Text('Cost List', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                            leading: const Icon(Icons.person_outline),
                            iconColor: Constants.primaryColor,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: ExpansionTile(
                        textColor: Constants.buttonColor,
                        iconColor: Constants.buttonColor,
                        title: const Text('Office', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14)),
                        children: [
                          ListTile(
                            contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                            onTap: () {},
                            title: const Text('DO Origin', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                            leading: const Icon(Icons.house_outlined),
                            iconColor: Constants.primaryColor,
                          ),
                          ListTile(
                            contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                            onTap: () {},
                            title: const Text('Invoice',style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                            leading: const Icon(Icons.add_box_outlined),
                            iconColor: Constants.primaryColor,
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                          child: Text('FINANCE', textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),
                        ),
                        Container(
                          child: 
                          ListTile(
                            contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                            onTap: () {},
                            title: const Text('Bank', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),),
                            leading: const Icon(Icons.price_change),
                            iconColor: Constants.primaryColor,
                          ),
                        ),
                        Container(
                          child: 
                          ListTile(
                            contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                            onTap: () {},
                            title: const Text('Cashier', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),),
                            leading: const Icon(Icons.price_change),
                            iconColor: Constants.primaryColor,
                          ),
                        ),
                        Container(
                          child: 
                          ListTile(
                            contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                            onTap: () {},
                            title: const Text('Closing Shift', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),),
                            leading: const Icon(Icons.price_change),
                            iconColor: Constants.primaryColor,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                          child: Text('PAYROLL', textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),
                        ),
                        Container(
                          child: ExpansionTile(
                            textColor: Constants.buttonColor,
                            iconColor: Constants.buttonColor,
                            title: const Text('Master', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14)),
                            children: [
                              ListTile(
                                contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                                onTap: () {},
                                title: const Text('Department', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                                leading: const Icon(Icons.house_outlined),
                                iconColor: Constants.primaryColor,
                              ),
                              ListTile(
                                contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                                onTap: () {},
                                title: const Text('Division',style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                                leading: const Icon(Icons.add_box_outlined),
                                iconColor: Constants.primaryColor,
                              ),
                              ListTile(
                                contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                                onTap: () {},
                                title: const Text('Occupation', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                                leading: const Icon(Icons.person_outline),
                                iconColor: Constants.primaryColor,
                              ),
                              ListTile(
                                contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                                onTap: () {},
                                title: const Text('Employee',style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                                leading: const Icon(Icons.add_box_outlined),
                                iconColor: Constants.primaryColor,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: ExpansionTile(
                            textColor: Constants.buttonColor,
                            iconColor: Constants.buttonColor,
                            title: const Text('Office', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14)),
                            children: [
                              ListTile(
                                contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                                onTap: () {},
                                title: const Text('Loan', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                                leading: const Icon(Icons.house_outlined),
                                iconColor: Constants.primaryColor,
                              ),
                              ListTile(
                                contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                                onTap: () {},
                                title: const Text('Payroll',style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                                leading: const Icon(Icons.add_box_outlined),
                                iconColor: Constants.primaryColor,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: ExpansionTile(
                            textColor: Constants.buttonColor,
                            iconColor: Constants.buttonColor,
                            title: const Text('Driver', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14)),
                            children: [
                              ListTile(
                                contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                                onTap: () {},
                                title: const Text('Dumptruck', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                                leading: const Icon(Icons.house_outlined),
                                iconColor: Constants.primaryColor,
                              ),
                              ListTile(
                                contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                                onTap: () {},
                                title: const Text('Cargo',style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                                leading: const Icon(Icons.add_box_outlined),
                                iconColor: Constants.primaryColor,
                              ),
                              ListTile(
                                contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                                onTap: () {},
                                title: const Text('Mixer',style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                                leading: const Icon(Icons.add_box_outlined),
                                iconColor: Constants.primaryColor,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: ExpansionTile(
                            textColor: Constants.buttonColor,
                            iconColor: Constants.buttonColor,
                            title: const Text('Report', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14)),
                            children: [
                              ListTile(
                                contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                                onTap: () {},
                                title: const Text('Payslip', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                                leading: const Icon(Icons.house_outlined),
                              ),
                              ListTile(
                                contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                                onTap: () {},
                                title: const Text('Attendance',style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                                leading: const Icon(Icons.add_box_outlined),
                              ),
                              ListTile(
                                contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                                onTap: () {},
                                title: const Text('Overtime', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                                leading: const Icon(Icons.person_outline),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                              child: Text('GPS', textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),
                            ),
                            Container(
                              child: 
                              ListTile(
                                contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                                onTap: () {},
                                title: const Text('Order', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),),
                                leading: const Icon(Icons.price_change),
                              ),
                            ),
                            Container(
                              child: 
                              ListTile(
                                contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                                onTap: () {},
                                title: const Text('POI', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),),
                                leading: const Icon(Icons.price_change),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    
                      ],
                    ),
                      ],
                    ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SaldoIcons extends StatelessWidget {
  final IconData icons;
  final String text; 

  const SaldoIcons({required this.icons, required this.text});

  @override 
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: Constants.whiteColor, borderRadius: BorderRadius.circular(10)),
            child: Icon(
              size: 20,
              icons,
              color: Constants.primaryColor,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          text,
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}