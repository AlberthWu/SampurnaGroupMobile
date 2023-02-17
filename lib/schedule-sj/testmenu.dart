import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:sampurnagroupmobile/constants.dart';
// import 'package:sampurnagroupmobile/menu.dart';
import 'package:sampurnagroupmobile/page/MyRadioButton.dart';

class MenuTest extends StatelessWidget {
    MenuTest({Key? key}) : super(key: key);

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
      'label': 'Inventory',
      'icon': 'assets/icons/inventory.png',
      'color':  Colors.red
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
    // {
    //   'label': 'New',
    //   'image': '',
    //   'color':  Colors.blueGrey
    // },
  ];


@override  
Widget build(BuildContext context) {
  return Scaffold(
    appBar: PreferredSize(
      preferredSize: const Size.fromHeight(70),
      child: Container(
        color: Theme.of(context).primaryColor,
        padding: const EdgeInsets.all(10),
        child: SafeArea(
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
                      padding: const EdgeInsets.all(6),
                      child: Row(
                        children: const [
                          Icon(Icons.search),
                          SizedBox(width: 15,),
                          Text('Find services, Transportation, or Maps',
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
                    padding: const EdgeInsets.all(12),
                    child: Icon(
                      Icons.person,
                      color: Theme.of(context).primaryColor,
                      size: 18,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ),
    body: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Wrap(
            runSpacing: 10,
            alignment: WrapAlignment.spaceBetween,
            children: [
              for (final menuFavorite in menuFavorites) Material(
                  borderRadius: BorderRadius.circular(14),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: InkWell(
                    splashColor: menuFavorite['color'].withOpacity(0.2),
                    highlightColor: menuFavorite['color'].withOpacity(0.4),
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
                                      color: menuFavorite['color'].withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: 
                                  Image.asset(
                                    menuFavorite['icon'],
                                    height: 60,
                                    width: 60,
                                    fit: BoxFit.fill,
                                    // 'assets/image/place.png',
                                    // height: 65,
                                    // width: 65,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Text(menuFavorite['label']),
                        ],
                      ),
                    ),
                  ),
                ),
              // Material(
              //   borderRadius: BorderRadius.circular(15),
              //   clipBehavior: Clip.antiAliasWithSaveLayer,
              //   child: InkWell(
              //     onTap: (() {}),
              //     child: Padding(
              //       padding: const EdgeInsets.all(10.0),
              //       child: Column(
              //         children: [
              //           Container(
              //             height: 65,
              //             width: 65,
              //             decoration: const BoxDecoration(
              //                 color: Colors.grey, shape: BoxShape.circle),
              //             child: const Icon(Icons.more_horiz_outlined),
              //           ),
              //           const SizedBox(
              //             height: 10,
              //           ),
              //           const Text('More')
              //         ],
              //       ),
              //     ),
              //   ),
              // )
            ],
          )
        ],
      ),
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

  // int _selectedTabIndex = 0;

  // void _onNavBarTapped(int index) {
  //   setState(() {
  //     _selectedTabIndex = index;
  //   });
  // }

  // @override
  // Widget build(BuildContext context) {
    List<Widget> PageText = [
      const Text('Beranda'),
      const Text('Maps'),
      const Text('Profile'),
      const Text('Setting'),
    ];
    
    // final _listPage = <Widget>[
      
    // ];
  // }

  List<Widget> halaman = [
    MenuTest(),
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
              pageController.animateToPage(
                index,
                duration: Duration(milliseconds: 300),
                curve: Curves.easeInCirc,
              );
            });
          },
          showUnselectedLabels: true,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.red,
          selectedIconTheme: IconThemeData(
            color: Theme.of(context).primaryColor,
          ),
          unselectedIconTheme: const IconThemeData(
            color: Colors.red,
          ),
          iconSize: 30,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.map),
              label: 'Maps',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Setting',
            ),
          ],
        ));
  }
}