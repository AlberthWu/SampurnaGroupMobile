// ignore: duplicate_ignore
// ignore_for_file: prefer_typing_uninitialized_variables, must_be_immutable

import 'package:flutter/material.dart';

class Product {
  final image;
  final name;
  final price;

  Product(this.image, this.name, this.price);
}

class Employee extends StatelessWidget {
  List products = [
    Product(
        'https://sampurna-group.com/assets/img/dumptruck-sampurna-group.jpg',
        'Dumptruck',
        2000),
    // Product(
    //     'https://sampurna-group.com/assets/img/dumptruck-sampurna-group.jpg',
    //     'Dumptruck',
    //     2000),
  ];

  Employee({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff6f7f9),
      appBar: AppBar(
        title: const Text('Buyings'),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                'Featured item',
                'Most recent',
                // 'Item 1',
                // 'Item 2',
                // 'Item 3',
                // 'Etc...'
              ]
                  .map((e) => Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 8.0),
                        child: OutlinedButton(
                          onPressed: () {},
                          // style: RoundedRectangleBorder(
                          //     borderRadius: BorderRadius.circular(30)),
                          child: Text(e),
                        ),
                      ))
                  .toList(),
            ),
          ),
          Column(
              children: products
                  .map(
                    (e) => Container(
                      margin:
                          const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 10,
                              spreadRadius: 3,
                              offset: Offset(3, 4))
                        ],
                      ),
                      child: ListTile(
                        leading: Image.network(
                          e.image,
                          fit: BoxFit.cover,
                          width: 90,
                          height: 100,
                        ),
                        title: Text(
                          e.name,
                          style: const TextStyle(fontSize: 25),
                        ),
                        subtitle: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("\$ ${e.price}"),
                            const SizedBox(height: 10),
                            SizedBox(
                              height: 40,
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                      left: 20,
                                      bottom: 0,
                                      child: CircleAvatar(
                                          backgroundColor: Colors.green,
                                          child: Image.network(
                                              'https://sampurna-group.com/assets/img/dumptruck-sampurna-group.jpg'))),
                                  const Positioned(
                                    left: 0,
                                    bottom: 0,
                                    child: CircleAvatar(child: Text('a')),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                  .toList())
        ],
      ),
    );
  }
}