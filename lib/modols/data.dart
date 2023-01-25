class Data {
  static List<Product> products = [
    Product(
        image: 'https://cdn.salla.sa/Aedxd/b3hTFtpS0z8gpopInh1YDxifGRAmy66kcuVbDxfS.jpg',
        name: 'طارد السحالي "الوزغ" طبيعي من زيوت عشبية - Herbal Strategi Just Out Herbal Lizard Repellent',
        price: '٢٧ ر.س'),
    Product(
        image: 'https://cdn.salla.sa/Aedxd/3I3yAXl78UqphrGn4OZYdTTMb4l0mO8kM4tRcwl2.jpg',
        name: 'طارد السحالي "الوزغ" طبيعي من زيوت عشبية - Herbal Strategi Just Out Herbal Lizard Repellent',
        price: '٢٧ ر.س'),
    Product(
        image: 'https://cdn.salla.sa/Aedxd/TmuM4FVQof6kSoJYLEbaM82casXt00ZakLG8qES5.jpg',
        name: 'طارد السحالي "الوزغ" طبيعي من زيوت عشبية - Herbal Strategi Just Out Herbal Lizard Repellent',
        price: '٢٧ ر.س'),
  ];
  static List<Product> cart = [];
}

class Product {
  String image;
  String name;
  String price;
  Product({required this.image, required this.name, required this.price});
}
