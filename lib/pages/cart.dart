import 'package:flutter/material.dart';

import '../contents/cart_content.dart';
import '../modols/data.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: ListView(children: [
            Column(
              children: [
                for (var product in Data.cart)
                  Padding(
                    padding: const EdgeInsets.all(50),
                    child: SizedBox(
                      height: 500,
                      width: 300,
                      child: cart_content(product: product),
                    ),
                  ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
