import 'package:disiapp/screens/styles/style.dart';

import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({
    super.key,
    this.row,
    this.icon,
    this.showNotification = false,
    this.showSheceicon = false,
  });
  final Widget? row;

  final Widget? icon;
  final bool showNotification;
  final bool showSheceicon;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 80,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    "assets/images/bdlogo.png",
                    height: 50,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "হ্যালো ডিসি",
                        style: titeltext,
                      ),
                      Container(
                        width: 115,
                        height: 2,
                        decoration: BoxDecoration(
                            border: Border.all(width: 0.5, color: Colors.red)),
                      ),
                      const Text(
                        "Hello DC",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.red,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (showSheceicon) Icon(Icons.safety_check),
                if (showNotification) ...[
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.notification_add)
                ]
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(80);
}
