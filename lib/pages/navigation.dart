import 'package:flutter/material.dart';

import 'cart.dart';
import 'product1page.dart';
import 'profile.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget body;

    if (currentIndex == 0) {
      body = const Page11();
    } else if (currentIndex == 1) {
      body = const Cart();
    } else {
      body = const Profile();
    }
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (newIndex) {
          currentIndex = newIndex;
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Products'),
          BottomNavigationBarItem(icon: Icon(Icons.wallet), label: 'Cart'), //Page22
          BottomNavigationBarItem(icon: Icon(Icons.man), label: 'Profile'),
        ],
      ),
      body: body,
    );
  }
}
