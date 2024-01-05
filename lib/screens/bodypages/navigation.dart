import 'package:disiapp/screens/customs/appbar.dart';
import 'package:disiapp/screens/bodypages/homescreen.dart';
import 'package:disiapp/screens/login/loginscreen.dart';
import 'package:flutter/material.dart';

import 'all_post.dart';
import 'profile.dart';
import 'view_post.dart';

class NavigationScreen extends StatefulWidget {
  NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<NavigationScreen> {
  var _currenteindex = 0;

  List tabpage = [
    const ViewAllpost(),
    HomePage(),
    const ViewPostScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: const CustomAppbar(),
        body: tabpage[_currenteindex],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currenteindex,
            onTap: (index) {
              setState(() {
                _currenteindex = index;
              });
            },
            selectedItemColor: Colors.red,
            unselectedItemColor: Colors.green,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.menu), label: "1"),
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "1"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.library_books_outlined), label: "1"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle), label: "1"),
            ]),

        // floatingActionButton: ,
      ),
    );
  }
}
