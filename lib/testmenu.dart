import 'package:flutter/material.dart';

class MenuTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(initialPage: 0, viewportFraction: 1);
    List<Color> colors = [Colors.red, Colors.blue, Colors.black, Colors.purple];
    return Scaffold(
        appBar: AppBar(
          title: Text("title"),
        ),
        body: PageView.builder(
          itemCount: colors.length,
          itemBuilder: (context, index) {
            return Container(
              color: colors[index],
            );
          },
        ));
  }
}