import 'package:flutter/material.dart';
import 'package:hw_8/modols/data.dart';

import '../contents/cards.dart';

class Page11 extends StatelessWidget {
  const Page11({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        color: const Color.fromARGB(255, 255, 255, 255),
        child: ListView(children: [
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 400,
            child: Horizental_Cards(),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            child: Column(children: [
              Image.asset(
                'images/ee.png',
                height: 180,
              ),
              Image.asset(
                'images/ee.png',
                height: 180,
              ),
              Image.asset(
                'images/ee.png',
                height: 180,
              )
            ]),
          )
        ]),
      ),
    );
  }
}
