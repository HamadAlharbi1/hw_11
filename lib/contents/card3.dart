import 'package:flutter/material.dart';

import '../modols/data.dart';

class card3 extends StatelessWidget {
  const card3({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
      ],
    );
  }
}
