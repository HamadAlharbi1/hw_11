import 'package:flutter/material.dart';

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
                      child: Column(
                        children: [
                          Image(
                            image: NetworkImage(product.image),
                            height: 280,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text(
                              product.name,
                              style: const TextStyle(color: Colors.grey, fontSize: 20),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Row(
                              children: [
                                Text(
                                  product.price,
                                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
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
