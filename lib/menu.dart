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
    // {
    //   'label': 'Inventory',
    //   'icon': 'assets/icons/inventory.png',
    //   'color':  Colors.red
    // },
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

  // final List<Map> picInformation = [
  //   {
  //     'image': 'assets/images/banner.png',
  //   },
  //   {
  //     'icon': 'assets/images/banner.png',
  //   },
  //   {
  //     'icon': 'assets/images/banner.png',
  //   },
  // ];

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
                              return Container(
                                padding: const EdgeInsets.all(30),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 805,
                                      child: ListView(
                                        // shrinkWrap: true,
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
                                                    ),
                                                    ListTile(
                                                      contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                                                      onTap: () {},
                                                      title: const Text('Customer', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                                                      leading: const Icon(Icons.person_outline),
                                                    ),
                                                    ListTile(
                                                      contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                                                      onTap: () {},
                                                      title: const Text('Pricelist', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                                                      leading: const Icon(Icons.monetization_on_outlined),
                                                    ),
                                                    ListTile(
                                                      contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                                                      onTap: () {},
                                                      title: const Text('UJT List', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                                                      leading: const Icon(Icons.money),
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
                                                      leading: const Icon(Icons.house_outlined),
                                                    ),
                                                    ListTile(
                                                      contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                                                      onTap: () {},
                                                      title: const Text('Invoice',style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                                                      leading: const Icon(Icons.add_box_outlined),
                                                    ),
                                                    ListTile(
                                                      contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                                                      onTap: () {},
                                                      title: const Text('Invoice', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                                                      leading: const Icon(Icons.person_outline),
                                                    ),
                                                    ListTile(
                                                      contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                                                      onTap: () {},
                                                      title: const Text('Order Manual Number', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                                                      leading: const Icon(Icons.monetization_on_outlined),
                                                    ),
                                                    ListTile(
                                                      contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                                                      onTap: () {},
                                                      title: const Text('Schedule', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                                                      leading: const Icon(Icons.money),
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
                                                    ),
                                                    ListTile(
                                                      contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                                                      onTap: () {},
                                                      title: const Text('UJT',style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                                                      leading: const Icon(Icons.add_box_outlined),
                                                    ),
                                                    ListTile(
                                                      contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                                                      onTap: () {},
                                                      title: const Text('Non UJT', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                                                      leading: const Icon(Icons.person_outline),
                                                    ),
                                                    ListTile(
                                                      contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                                                      onTap: () {},
                                                      title: const Text('Mixing', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                                                      leading: const Icon(Icons.monetization_on_outlined),
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
                                                    ),
                                                    ListTile(
                                                      contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                                                      onTap: () {},
                                                      title: const Text('Fleet',style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                                                      leading: const Icon(Icons.add_box_outlined),
                                                    ),
                                                    ListTile(
                                                      contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                                                      onTap: () {},
                                                      title: const Text('Fleet Formation', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
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
                                                    ),
                                                    ListTile(
                                                      contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                                                      onTap: () {},
                                                      title: const Text('Transporter',style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                                                      leading: const Icon(Icons.add_box_outlined),
                                                    ),
                                                    ListTile(
                                                      contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                                                      onTap: () {},
                                                      title: const Text('Supplier', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                                                      leading: const Icon(Icons.person_outline),
                                                    ),
                                                    ListTile(
                                                      contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                                                      onTap: () {},
                                                      title: const Text('Sparepart',style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                                                      leading: const Icon(Icons.add_box_outlined),
                                                    ),
                                                    ListTile(
                                                      contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                                                      onTap: () {},
                                                      title: const Text('Cost List', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                                                      leading: const Icon(Icons.person_outline),
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
                                                    ),
                                                    ListTile(
                                                      contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                                                      onTap: () {},
                                                      title: const Text('Invoice',style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                                                      leading: const Icon(Icons.add_box_outlined),
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
                                                    ),
                                                  ),
                                                  Container(
                                                    child: 
                                                    ListTile(
                                                      contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                                                      onTap: () {},
                                                      title: const Text('Cashier', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),),
                                                      leading: const Icon(Icons.price_change),
                                                    ),
                                                  ),
                                                  Container(
                                                    child: 
                                                    ListTile(
                                                      contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                                                      onTap: () {},
                                                      title: const Text('Closing Shift', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),),
                                                      leading: const Icon(Icons.price_change),
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
                                                        ),
                                                        ListTile(
                                                          contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                                                          onTap: () {},
                                                          title: const Text('Division',style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                                                          leading: const Icon(Icons.add_box_outlined),
                                                        ),
                                                        ListTile(
                                                          contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                                                          onTap: () {},
                                                          title: const Text('Occupation', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                                                          leading: const Icon(Icons.person_outline),
                                                        ),
                                                        ListTile(
                                                          contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                                                          onTap: () {},
                                                          title: const Text('Employee',style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                                                          leading: const Icon(Icons.add_box_outlined),
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
                                                        ),
                                                        ListTile(
                                                          contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                                                          onTap: () {},
                                                          title: const Text('Payroll',style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                                                          leading: const Icon(Icons.add_box_outlined),
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
                                                        ),
                                                        ListTile(
                                                          contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                                                          onTap: () {},
                                                          title: const Text('Cargo',style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                                                          leading: const Icon(Icons.add_box_outlined),
                                                        ),
                                                        ListTile(
                                                          contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                                                          onTap: () {},
                                                          title: const Text('Mixer',style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                                                          leading: const Icon(Icons.add_box_outlined),
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
                                    // SizedBox(
                                    //   width: double.infinity,
                                    //   child: ElevatedButton(
                                    //     onPressed: () {}, 
                                    //     child: const Text('Submit'),
                                    //   ),
                                    // ),
                                  ],
                                ),
                              );
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