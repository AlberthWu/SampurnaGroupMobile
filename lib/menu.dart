import 'package:flutter/material.dart';
import 'package:sampurnagroupmobile/constants.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Menu extends StatelessWidget {
   Menu({Key? key}) : super(key: key);

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
  ];

  final List<Map> picInformation = [
    {
      'image': 'assets/images/banner.png',
    },
    {
      'icon': 'assets/images/banner.png',
    },
    {
      'icon': 'assets/images/banner.png',
    },
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
                // SliderScreen(),
                // TabPage(),
                // Material(
                //   borderRadius: BorderRadius.circular(16),
                //   clipBehavior: Clip.antiAliasWithSaveLayer,
                //   child: InkWell(
                //     onTap: (() {}),
                //     child: Padding(
                //       padding: const EdgeInsets.all(8.0),
                //       child: Column(
                //         children: [
                //           Container(
                //             height: 50,
                //             width: 50,
                //             decoration: const BoxDecoration(
                //               color: Colors.black12,
                //               shape: BoxShape.circle
                //             ),
                //             child: const Icon(Icons.more_horiz_outlined),
                //           ),
                //           const SizedBox(height: 8,),
                //           const Text('More'),
                //         ],
                //       ),
                //     ),
                //   ),
                // )
              ],
            ),
          ],
        ),
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