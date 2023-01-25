import 'package:flutter/material.dart';
import 'package:hw_8/modols/data.dart';

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
            child: ListView(
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
                            child: Column(children: [
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
                                  style: TextStyle(
                                      fontSize: 25, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 0, 0, 0)),
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              )
                            ]),
                          )),
                        );
                      },
                      child: Container(
                        width: 350,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                        child: Column(
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
                        ),
                      ),
                    ),
                  ),
              ],
            ),
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
