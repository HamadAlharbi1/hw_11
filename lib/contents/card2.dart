import 'package:flutter/material.dart';
import 'package:hw_8/modols/data.dart';

class card2 extends StatelessWidget {
  const card2({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Image(
        image: NetworkImage(product.image),
        height: 300,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Text(
          product.name,
          style: const TextStyle(color: Colors.grey, fontSize: 15),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Text(
          product.price,
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      const SizedBox(
        height: 30,
      ),
      TextButton(
        onPressed: () {
          Data.cart.add(product);
        },
        child: const Text(
          'Add To Cart',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 0, 0, 0)),
        ),
      ),
      const SizedBox(
        height: 30,
      )
    ]);
  }
}
