import 'package:flutter/material.dart';
import 'package:hw_8/modols/data.dart';

import 'card2.dart';
import 'card3.dart';

class Horizental_Cards extends StatelessWidget {
  const Horizental_Cards({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        for (var product in Data.products)
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (context) => SingleChildScrollView(
                      child: Container(
                    width: 300,
                    color: const Color.fromARGB(119, 158, 158, 158),
                    child: card2(product: product),
                  )),
                );
              },
              child: Container(
                width: 350,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: card3(product: product),
              ),
            ),
          ),
      ],
    );
  }
}
