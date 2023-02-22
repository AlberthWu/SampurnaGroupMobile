import 'package:flutter/material.dart';
import 'package:sampurnagroupmobile/constants.dart';

class SubMenu extends StatelessWidget {
  const SubMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sampurna Group'),
        backgroundColor: Constants.primaryColor,
      ),
      body: ListView(
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                    child: Text('SALES',textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),
                  ),
                  Container(
                    child: ExpansionTile(
                      textColor: Constants.buttonColor,
                      iconColor: Constants.buttonColor,
                      title: Text('Master', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14)),
                      children: [
                        ListTile(
                          contentPadding: EdgeInsets.symmetric(horizontal: 40),
                          onTap: () {},
                          title: Text('Pool', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                          leading: Icon(Icons.house_outlined),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.symmetric(horizontal: 40),
                          onTap: () {},
                          title: Text('Product',style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                          leading: Icon(Icons.add_box_outlined),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.symmetric(horizontal: 40),
                          onTap: () {},
                          title: Text('Customer', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                          leading: Icon(Icons.person_outline),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.symmetric(horizontal: 40),
                          onTap: () {},
                          title: Text('Pricelist', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                          leading: Icon(Icons.monetization_on_outlined),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.symmetric(horizontal: 40),
                          onTap: () {},
                          title: Text('UJT List', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                          leading: Icon(Icons.money),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: ExpansionTile(
                      textColor: Constants.buttonColor,
                      iconColor: Constants.buttonColor,
                      title: Text('Office', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14)),
                      children: [
                        ListTile(
                          contentPadding: EdgeInsets.symmetric(horizontal: 40),
                          onTap: () {},
                          title: Text('PO Customer', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                          leading: Icon(Icons.house_outlined),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.symmetric(horizontal: 40),
                          onTap: () {},
                          title: Text('Invoice',style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                          leading: Icon(Icons.add_box_outlined),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.symmetric(horizontal: 40),
                          onTap: () {},
                          title: Text('Invoice', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                          leading: Icon(Icons.person_outline),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.symmetric(horizontal: 40),
                          onTap: () {},
                          title: Text('Order Manual Number', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                          leading: Icon(Icons.monetization_on_outlined),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.symmetric(horizontal: 40),
                          onTap: () {},
                          title: Text('Schedule', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                          leading: Icon(Icons.money),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: ExpansionTile(
                      textColor: Constants.buttonColor,
                      iconColor: Constants.buttonColor,
                      title: Text('Order', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14)),
                      children: [
                        ListTile(
                          contentPadding: EdgeInsets.symmetric(horizontal: 40),
                          onTap: () {},
                          title: Text('Manual UJT', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                          leading: Icon(Icons.house_outlined),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.symmetric(horizontal: 40),
                          onTap: () {},
                          title: Text('UJT',style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                          leading: Icon(Icons.add_box_outlined),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.symmetric(horizontal: 40),
                          onTap: () {},
                          title: Text('Non UJT', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                          leading: Icon(Icons.person_outline),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.symmetric(horizontal: 40),
                          onTap: () {},
                          title: Text('Mixing', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                          leading: Icon(Icons.monetization_on_outlined),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: Text('FLEET', textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),
                  ),
                  Container(
                    child: ExpansionTile(
                      textColor: Constants.buttonColor,
                      iconColor: Constants.buttonColor,
                      title: Text('Master', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14)),
                      children: [
                        ListTile(
                          contentPadding: EdgeInsets.symmetric(horizontal: 40),
                          onTap: () {},
                          title: Text('Fleet Type', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                          leading: Icon(Icons.house_outlined),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.symmetric(horizontal: 40),
                          onTap: () {},
                          title: Text('Fleet',style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                          leading: Icon(Icons.add_box_outlined),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.symmetric(horizontal: 40),
                          onTap: () {},
                          title: Text('Fleet Formation', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                          leading: Icon(Icons.person_outline),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: Text('PURCHASE', textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),
                  ),
                  Container(
                    child: ExpansionTile(
                      textColor: Constants.buttonColor,
                      iconColor: Constants.buttonColor,
                      title: Text('Master', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14)),
                      children: [
                        ListTile(
                          contentPadding: EdgeInsets.symmetric(horizontal: 40),
                          onTap: () {},
                          title: Text('Origin', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                          leading: Icon(Icons.house_outlined),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.symmetric(horizontal: 40),
                          onTap: () {},
                          title: Text('Transporter',style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                          leading: Icon(Icons.add_box_outlined),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.symmetric(horizontal: 40),
                          onTap: () {},
                          title: Text('Supplier', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                          leading: Icon(Icons.person_outline),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.symmetric(horizontal: 40),
                          onTap: () {},
                          title: Text('Sparepart',style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                          leading: Icon(Icons.add_box_outlined),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.symmetric(horizontal: 40),
                          onTap: () {},
                          title: Text('Cost List', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                          leading: Icon(Icons.person_outline),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: ExpansionTile(
                      textColor: Constants.buttonColor,
                      iconColor: Constants.buttonColor,
                      title: Text('Office', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14)),
                      children: [
                        ListTile(
                          contentPadding: EdgeInsets.symmetric(horizontal: 40),
                          onTap: () {},
                          title: Text('DO Origin', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                          leading: Icon(Icons.house_outlined),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.symmetric(horizontal: 40),
                          onTap: () {},
                          title: Text('Invoice',style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                          leading: Icon(Icons.add_box_outlined),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                        child: Text('FINANCE', textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),
                      ),
                      Container(
                        child: 
                        ListTile(
                          contentPadding: EdgeInsets.symmetric(horizontal: 20),
                          onTap: () {},
                          title: Text('Bank', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),),
                          leading: Icon(Icons.price_change),
                        ),
                      ),
                      Container(
                        child: 
                        ListTile(
                          contentPadding: EdgeInsets.symmetric(horizontal: 20),
                          onTap: () {},
                          title: Text('Cashier', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),),
                          leading: Icon(Icons.price_change),
                        ),
                      ),
                      Container(
                        child: 
                        ListTile(
                          contentPadding: EdgeInsets.symmetric(horizontal: 20),
                          onTap: () {},
                          title: Text('Closing Shift', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),),
                          leading: Icon(Icons.price_change),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                        child: Text('PAYROLL', textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),
                      ),
                      Container(
                        child: ExpansionTile(
                          textColor: Constants.buttonColor,
                          iconColor: Constants.buttonColor,
                          title: Text('Master', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14)),
                          children: [
                            ListTile(
                              contentPadding: EdgeInsets.symmetric(horizontal: 40),
                              onTap: () {},
                              title: Text('Department', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                              leading: Icon(Icons.house_outlined),
                            ),
                            ListTile(
                              contentPadding: EdgeInsets.symmetric(horizontal: 40),
                              onTap: () {},
                              title: Text('Division',style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                              leading: Icon(Icons.add_box_outlined),
                            ),
                            ListTile(
                              contentPadding: EdgeInsets.symmetric(horizontal: 40),
                              onTap: () {},
                              title: Text('Occupation', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                              leading: Icon(Icons.person_outline),
                            ),
                            ListTile(
                              contentPadding: EdgeInsets.symmetric(horizontal: 40),
                              onTap: () {},
                              title: Text('Employee',style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                              leading: Icon(Icons.add_box_outlined),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: ExpansionTile(
                          textColor: Constants.buttonColor,
                          iconColor: Constants.buttonColor,
                          title: Text('Office', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14)),
                          children: [
                            ListTile(
                              contentPadding: EdgeInsets.symmetric(horizontal: 40),
                              onTap: () {},
                              title: Text('Loan', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                              leading: Icon(Icons.house_outlined),
                            ),
                            ListTile(
                              contentPadding: EdgeInsets.symmetric(horizontal: 40),
                              onTap: () {},
                              title: Text('Payroll',style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                              leading: Icon(Icons.add_box_outlined),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: ExpansionTile(
                          textColor: Constants.buttonColor,
                          iconColor: Constants.buttonColor,
                          title: Text('Driver', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14)),
                          children: [
                            ListTile(
                              contentPadding: EdgeInsets.symmetric(horizontal: 40),
                              onTap: () {},
                              title: Text('Dumptruck', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                              leading: Icon(Icons.house_outlined),
                            ),
                            ListTile(
                              contentPadding: EdgeInsets.symmetric(horizontal: 40),
                              onTap: () {},
                              title: Text('Cargo',style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                              leading: Icon(Icons.add_box_outlined),
                            ),
                            ListTile(
                              contentPadding: EdgeInsets.symmetric(horizontal: 40),
                              onTap: () {},
                              title: Text('Mixer',style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                              leading: Icon(Icons.add_box_outlined),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: ExpansionTile(
                          textColor: Constants.buttonColor,
                          iconColor: Constants.buttonColor,
                          title: Text('Report', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14)),
                          children: [
                            ListTile(
                              contentPadding: EdgeInsets.symmetric(horizontal: 40),
                              onTap: () {},
                              title: Text('Payslip', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                              leading: Icon(Icons.house_outlined),
                            ),
                            ListTile(
                              contentPadding: EdgeInsets.symmetric(horizontal: 40),
                              onTap: () {},
                              title: Text('Attendance',style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                              leading: Icon(Icons.add_box_outlined),
                            ),
                            ListTile(
                              contentPadding: EdgeInsets.symmetric(horizontal: 40),
                              onTap: () {},
                              title: Text('Overtime', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),),
                              leading: Icon(Icons.person_outline),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                            child: Text('GPS', textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),
                          ),
                          Container(
                            child: 
                            ListTile(
                              contentPadding: EdgeInsets.symmetric(horizontal: 20),
                              onTap: () {},
                              title: Text('Order', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),),
                              leading: Icon(Icons.price_change),
                            ),
                          ),
                          Container(
                            child: 
                            ListTile(
                              contentPadding: EdgeInsets.symmetric(horizontal: 20),
                              onTap: () {},
                              title: Text('POI', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),),
                              leading: Icon(Icons.price_change),
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
          ),
        ],
      ),
    );
  }
}

// class Item {
//   Item({
//     required this.headerText,
//     required this.expandedText,
//     this.isExpanded = false,
//   });
//   String headerText;
//   String expandedText;
//   bool isExpanded;
// }

// class SubMenu extends StatefulWidget {
//   const SubMenu({Key? key}) : super(key: key);

//   @override
//   State<SubMenu> createState() => _SubMenuState();
// }

// class _SubMenuState extends State<SubMenu> {
//   final List<Item> _data = List<Item>.generate(
//     10, 
//     (int index) {
//       return Item(
//         headerText: 'Item $index', 
//         expandedText: 'This is item number $index',
//       );
//     },
//   );

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: ExpansionPanelList(
//         expansionCallback: (int index, bool isExpanded) {
//           setState(() {
//             _data[index].isExpanded = !isExpanded;
//           });
//         },
//         children: _data.map<ExpansionPanel>((Item item) {
//           return ExpansionPanel(
//             headerBuilder: (BuildContext context, bool isExpanded) {
//               return ListTile(
//                 title: Text(item.headerText),
//               );
//             },
//             body: ListTile(
//               title: Text(item.expandedText),
//               subtitle: const Text('To delete this item, click trash icon'),
//               trailing: const Icon(
//                 Icons.delete,
//                 color: Colors.red,
//               ),
//               onTap: () {
//                 setState(() {
//                   _data
//                       .removeWhere((Item currentItem) => item == currentItem);
//               });
//             }),
//           );
//         }).toList(),
//       ),
//     );
//   }
// }