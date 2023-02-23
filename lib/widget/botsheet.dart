import 'package:flutter/material.dart';

showModalBottomSheet(
      context: context,
      backgroundColor: appWhite,
      isScrollControlled: true,
      enableDrag: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      builder: (context) => DraggableScrollableSheet(
        initialChildSize: 0.4,
        maxChildSize: 0.9,
        minChildSize: 0.32,
        expand: false,
        builder: (context, scrollController) => SingleChildScrollView(
          controller: scrollController,
          child: Container(
            color: appWhite,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 8.0),
                  height: 4,
                  width: 36,
                  decoration: BoxDecoration(
                    color: sgRed,
                    borderRadius: BorderRadius.all(
                      Radius.circular(2.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                bottomWidget(data),
              ],
            ),
          ),
        ),
      ),
    );