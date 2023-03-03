import 'package:flutter/material.dart';
import 'package:sampurnagroupmobile/constants.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Menu extends StatelessWidget {
   Menu({Key? key}) : super(key: key);

  final List<Map> bannerList = [
    {"id":1, "image_path": 'assets/images/testing1.jpg'},
    {"id":2, "image_path": 'assets/images/testing2.jpg'},
    {"id":3, "image_path": 'assets/images/testing3.jpg'}
  ];

  final List<Map> menuFavorites = [
    {
      'label': 'Sales',
      'icon': 'assets/icons/sales.png',
      'color':  Colors.red
    },
    {
      'label': 'Fleet',
      'icon': 'assets/icons/fleet.png',
      'color':  Colors.blueGrey
    },
    {
      'label': 'Purchase',
      'icon': 'assets/icons/purchase.png',
      'color':  Colors.green
    },
    {
      'label': 'Finance',
      'icon': 'assets/icons/finance.png',
      'color':  Colors.blueGrey
    },
    {
      'label': 'Payroll',
      'icon': 'assets/icons/payroll.png',
      'color':  Colors.green
    },
    {
      'label': 'Employee',
      'icon': 'assets/icons/employee.png',
      'color':  Colors.blueGrey
    },
    {
      'label': 'GPS',
      'icon': 'assets/icons/gps.png',
      'color':  Colors.blueGrey
    },
  ];

  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _appBar(),
            const SizedBox(height: 20),
            const Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20),
              child:  SaldoApp(),
            ),
            const SizedBox(height: 10),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 10),
              child: Menus(menuFavorites: menuFavorites),
            ),

          ],
        ),
      ),
    );
  }
}

Widget _appBar() {
  return Container(
      height: 200,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: _boxDecoration(),
      child: SafeArea(
        child: Column(
          children: [
            _topBar(),
            _cardBar(),
            const SizedBox(height: 15),
          ],
        ),
      ),
  );
}

BoxDecoration _boxDecoration() {
  return BoxDecoration(
    borderRadius: const BorderRadius.vertical(
        bottom: Radius.circular(35),
    ),
    color: Constants.primaryColor
  );
}

Widget _topBar() {
  return Container(
    height: 55,
    child: Row(
      children: [
        Text(
          'Semangat Kerja!',
          textAlign: TextAlign.left,
          style: TextStyle(color: Constants.whiteColor, fontSize: 20),
        ),
      ],
    ),
  );
}

Widget _cardBar() {
  return Container(
      height: 100,
      decoration: _boxCard(),
      child: Column(
        children: [
          _whiteCard()
        ],
      ), 
  );
}

BoxDecoration _boxCard() {
  return BoxDecoration(
    borderRadius: BorderRadius.circular(35),
    color: Constants.whiteColor
  );
}

Widget _whiteCard() {
  return Container(
    height: 100,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(
          'assets/images/asmlogo.png',
        ),
        const SizedBox(width: 10,),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Display Your Name',
              style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5,),
            Text(
              'PT. Alam Sampurna Makmur',
              style: TextStyle(color: Colors.black, fontSize: 12),
            ),
            const SizedBox(height: 5,),
            Text(
              'Information Technology | Manager',
              style: TextStyle(color: Colors.black, fontSize: 12),
            ),
          ],
        ),
      ],
    ),
  );
}


class SaldoApp extends StatelessWidget {
  const SaldoApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Constants.primaryColor,
        borderRadius: BorderRadius.circular(25),
      ),
      height: 105,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: SingleChildScrollView(
              reverse: true,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 7),
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
                )
              ],
            ),
            ),
          ),
          const SaldoIcons(icons: Icons.timelapse_outlined, text: 'Kehadiran'),
          const SaldoIcons(icons: Icons.money_outlined, text: 'Kasbon'),
          const SaldoIcons(icons: Icons.file_open_outlined, text: 'Slip Gaji'),
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

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Material(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              borderRadius: BorderRadius.circular(32),
              child: InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: const [
                      Icon(Icons.search_outlined),
                      SizedBox(width: 15,),
                      Text('Find services, transportation, or place',
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 15,),
          Material(
            shape: const CircleBorder(),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Icon(Icons.notifications,
                  color: Theme.of(context).primaryColor,
                  size: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Menus extends StatelessWidget {
  const Menus({
    Key? key,
    required this.menuFavorites,
  }) : super(key: key);

  final List<Map> menuFavorites;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 10,
      alignment: WrapAlignment.spaceBetween,
      children: [
        for (final menuFavorite in menuFavorites) Material(
          borderRadius: BorderRadius.circular(16),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: InkWell(
            splashColor: menuFavorite['color'].withOpacity(0.4),
            highlightColor: menuFavorite['color'].withOpacity(0.2),
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 75,
                    width: 75,
                    child: Stack(
                      children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            height: 65,
                            width: 65,
                            decoration: BoxDecoration(
                              color: menuFavorite['color'].withOpacity(0.2),
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Image.asset(
                            menuFavorite['icon'],
                            height: 60,
                            width: 60,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(menuFavorite['label']),
                ],
              ),
            ),
          ),
        ),
        //SubMenu
        Material(
          borderRadius: BorderRadius.circular(16),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: InkWell(
            onTap: () {
            showModalBottomSheet(
              context: context, 
              backgroundColor: Constants.whiteColor,
              isScrollControlled: true,
              enableDrag: true,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), 
                  topRight: Radius.circular(40), 
                ),
              ),
              builder: (context) {
                return const SubMenu();
            });
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    height: 65,
                    width: 65,
                    decoration: const BoxDecoration(
                      color: Colors.black12,
                      shape: BoxShape.circle
                    ),
                    child: const Icon(Icons.more_horiz_outlined),
                  ),
                  const SizedBox(height: 8),
                  const Text('More'),
                ],
              ),
            ),
          ),
        )
      ],
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

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  List imageList = [
    {"id":1, "image_path": 'assets/images/testing1.jpg'},
    {"id":2, "image_path": 'assets/images/testing2.jpg'},
    {"id":3, "image_path": 'assets/images/testing3.jpg'}
  ];

  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
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
                  scrollPhysics: const BouncingScrollPhysics(),
                  autoPlay: true,
                  aspectRatio: 2,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ],
    ),
    );
  }
}

class TabPage extends StatefulWidget {
  const TabPage({Key? key}) : super(key: key);

  @override
  State<TabPage> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {

  List<Widget> halaman = [
    Menu(),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.blueGrey,
    ),
    Container(
      color: Colors.grey,
    ),
    Container(
      color: Colors.red,
    ),
  ];

  int _currentIndex = 0;

  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: _currentIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: halaman,
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            pageController.animateToPage(index, 
            duration: const Duration(milliseconds: 300), 
            curve: Curves.easeOutCirc,
            );
          });
        },
        showUnselectedLabels: true,
        selectedItemColor: Constants.buttonColor,
        unselectedItemColor: Colors.black,
        selectedIconTheme: IconThemeData(
          color: Theme.of(context).primaryColor,
        ),
        unselectedIconTheme: const IconThemeData(
          color: Colors.black26,
        ),
        iconSize: 20,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map_outlined),
            label: 'Maps',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_rounded),
            label: 'Order',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            label: 'Perusahaan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notification_important_rounded),
            label: 'Pengajuan',
          ),
        ],
      ),
    );
  }
}