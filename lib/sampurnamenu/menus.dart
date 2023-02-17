import 'package:flutter/material.dart';
import 'package:sampurnagroupmobile/sampurnamenu/icons.dart';

class Menus extends StatelessWidget {
  const Menus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 27, right: 27, top: 32),
      child: SizedBox(
        height: 157,
        child: GridView.count(crossAxisCount: 4, mainAxisSpacing: 8, 
        children: [
          ...menuIcons.map(
            (icon) => Column(
              children: [
                SizedBox(
                  width: 40,
                  height: 40,
                  child: Image.asset(
                    'assets/icons/${icon.icon}.png',
                    // color: icon.icon == 'sales'
                    //     ? icon.color
                    //     : icon.icon == 'other'
                            // ?  const Color.fromARGB(255, 174, 0, 0)
                            // : Colors.white,
                    width: 100,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  icon.title,
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
