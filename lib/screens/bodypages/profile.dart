import 'package:disiapp/screens/styles/colors.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: bottoncolor,
        title: const Text(
          "প্রোফাইল",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            const CircleAvatar(
              radius: 50,
              child: Icon(Icons.camera_alt),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "User Name",
              style: TextStyle(fontSize: 18, color: bottoncolor),
            )
          ],
        ),
      ),
    );
  }
}
