import 'package:disiapp/screens/customs/appbar.dart';
import 'package:disiapp/screens/homescreen.dart';
import 'package:disiapp/screens/login/loginscreen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _currenteindex = 0;

  List tabpage = [
    HomePage(),
    HomePage(),
    HomePage(),
    LoginScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppbar(),
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
            items: [
              const BottomNavigationBarItem(icon: Icon(Icons.menu), label: "1"),
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
