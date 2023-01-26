import 'package:flutter/material.dart';

import '../modols/data.dart';

class cart_content extends StatelessWidget {
  const cart_content({
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
    );
  }
}
