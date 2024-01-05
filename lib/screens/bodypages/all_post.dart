import 'package:disiapp/screens/styles/colors.dart';
import 'package:flutter/material.dart';

class ViewAllpost extends StatelessWidget {
  const ViewAllpost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: bottoncolor,
        title: const Text(
          "পোষ্টের তালিকা",
          style: TextStyle(color: Colors.white),
        ),
        actions: const [
          Icon(
            Icons.search,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
    );
  }
}
