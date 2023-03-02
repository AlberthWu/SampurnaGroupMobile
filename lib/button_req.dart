import 'package:flutter/material.dart';

class StatusButtonWidget extends StatelessWidget {
  const StatusButtonWidget({Key? key}) : super(key: key);

  @override 
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          OutlinedButton(
            style: ButtonStyle(
              side: MaterialStateProperty.all(
                const BorderSide(
                color: Color.fromARGB(255, 100, 116, 139),
                width: 0.5,
                style: BorderStyle.none
              )),
            ),
            child: const Text(
              "Draft",
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.w500
              ),
            ),
            onPressed: () {},
          ),
          OutlinedButton(
            style: ButtonStyle(
              side: MaterialStateProperty.all(
                const BorderSide(
                color: Color.fromARGB(255, 239, 68, 68),
                width: 0.5,
                style: BorderStyle.none
              )),
            ),
            child: const Text(
              "Assign",
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.w500
              ),
            ),
            onPressed: () {},
          ),
          OutlinedButton(
            style: ButtonStyle(
              side: MaterialStateProperty.all(
                const BorderSide(
                color: Color.fromARGB(255, 239, 68, 68),
                width: 0.5,
                style: BorderStyle.none
              )),
            ),
            child: const Text(
              "Deny",
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.w500
              ),
            ),
            onPressed: () {},
          ),
          OutlinedButton(
            style: ButtonStyle(
              side: MaterialStateProperty.all(
                const BorderSide(
                color: Color.fromARGB(255, 34, 197, 94),
                width: 0.5,
                style: BorderStyle.none
              )),
            ),
            child: const Text(
              "Open",
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.w500
              ),
            ),
            onPressed: () {},
          ),
          OutlinedButton(
            style: ButtonStyle(
              side: MaterialStateProperty.all(
                const BorderSide(
                color: Color.fromARGB(255, 34, 197, 94),
                width: 0.5,
                style: BorderStyle.none
              )),
            ),
            child: const Text(
              "Transfer",
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.w500
              ),
            ),
            onPressed: () {},
          ),
          OutlinedButton(
            style: ButtonStyle(
              side: MaterialStateProperty.all(
                const BorderSide(
                color: Color.fromARGB(255, 34, 197, 94),
                width: 0.5,
                style: BorderStyle.none
              )),
            ),
            child: const Text(
              "Transit Origin",
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.w500
              ),
            ),
            onPressed: () {},
          ),
          OutlinedButton(
            style: ButtonStyle(
              side: MaterialStateProperty.all(
                const BorderSide(
                color: Color.fromARGB(255, 34, 197, 94),
                width: 0.5,
                style: BorderStyle.none
              )),
            ),
            child: const Text(
              "Loading",
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.w500
              ),
            ),
            onPressed: () {},
          ),
          OutlinedButton(
            style: ButtonStyle(
              side: MaterialStateProperty.all(
                const BorderSide(
                color: Color.fromARGB(255, 34, 197, 94),
                width: 0.5,
                style: BorderStyle.none
              )),
            ),
            child: const Text(
              "Transit Destination",
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.w500
              ),
            ),
            onPressed: () {},
          ),
          OutlinedButton(
            style: ButtonStyle(
              side: MaterialStateProperty.all(
                const BorderSide(
                color: Color.fromARGB(255, 34, 197, 94),
                width: 0.5,
                style: BorderStyle.none
              )),
            ),
            child: const Text(
              "Unloading",
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.w500
              ),
            ),
            onPressed: () {},
          ),
          OutlinedButton(
            style: ButtonStyle(
              side: MaterialStateProperty.all(
                const BorderSide(
                color: Color.fromARGB(255, 34, 197, 94),
                width: 0.5,
                style: BorderStyle.none
              )),
            ),
            child: const Text(
              "Delivered",
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.w500
              ),
            ),
            onPressed: () {},
          ),
          OutlinedButton(
            style: ButtonStyle(
              side: MaterialStateProperty.all(
                const BorderSide(
                color: Color.fromARGB(255, 34, 197, 94),
                width: 0.5,
                style: BorderStyle.none
              )),
            ),
            child: const Text(
              "Done",
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.w500
              ),
            ),
            onPressed: () {},
          ),
          OutlinedButton(
            style: ButtonStyle(
              side: MaterialStateProperty.all(
                const BorderSide(
                color: Color.fromARGB(255, 34, 197, 94),
                width: 0.5,
                style: BorderStyle.none
              )),
            ),
            child: const Text(
              "Pending",
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.w500
              ),
            ),
            onPressed: () {},
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 245, 158, 11).withOpacity(0.5),
              side: const BorderSide(color: Color.fromARGB(255, 245, 158, 11)),
            ),
            child: const Text(
              "Close",
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.w500
              ),
            ),
            onPressed: () {},
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 245, 158, 11).withOpacity(0.5),
              side: const BorderSide(color: Color.fromARGB(255, 245, 158, 11)),
            ),
            child: const Text(
              "Posted",
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.w500
              ),
            ),
            onPressed: () {},
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 239, 68, 68).withOpacity(0.5),
              side: const BorderSide(color: Color.fromARGB(255, 239, 68, 68)),
            ),
            child: const Text(
              "Void",
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.w500
              ),
            ),
            onPressed: () {},
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 239, 68, 68).withOpacity(0.5),
              side: const BorderSide(color: Color.fromARGB(255, 239, 68, 68)),
            ),
            child: const Text(
              "Void Pangkalan",
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.w500
              ),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}