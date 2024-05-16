class Product {
  final String title;
  bool isLiked;
  final bool isNew;
  final double price;
  final String address;
  final String imageUrl;

  Product({
    required this.title,
    this.isLiked = false,
    required this.isNew,
    required this.price,
    required this.address,
    required this.imageUrl,
  });
}

final List<Product> products = [
  Product(
      title: "Gentra 2023 автомат Халол насия/ Автовыкуп",
      isNew: false,
      price: 18500,
      address: "Эшангузар, Ташкентская область",
      imageUrl:
      "https://frankfurt.apollo.olxcdn.com/v1/files/tc4utsopq63d1-UZ/image;s=1000x700"),
  Product(
      title: "Керамика для авто!",
      isNew: true,
      price: 27,
      address: "Ташкент, Юнусабадский район",
      imageUrl:
      "https://frankfurt.apollo.olxcdn.com/v1/files/kv9usmal137w1-UZ/image;s=1000x700"),
  Product(
      title: "Скоттиш Фолд",
      isNew: false,
      price: 350,
      address: "Эшангузар, Ташкентская область",
      imageUrl:
      "https://frankfurt.apollo.olxcdn.com/v1/files/bhmb1p2jy56r-UZ/image;s=1000x700"),
  Product(
      title: "3 xonali dom",
      isNew: true,
      price: 47500,
      address: "Кибрай, Ташкентская область",
      imageUrl:
      "https://frankfurt.apollo.olxcdn.com/v1/files/rx56m310qm0z1-UZ/image;s=1000x700"),
  Product(
      title: "Велосипед BONVI 20",
      isNew: true,
      price: 48,
      address: "Ташкент, Сергелийский район",
      imageUrl:
      "https://frankfurt.apollo.olxcdn.com/v1/files/tccamvggwg0s1-UZ/image;s=1000x700"),
  Product(
      title: "Chevrolet Monza 1.5",
      isNew: false,
      price: 17300,
      address: "Ташкент, Юнусабадский район",
      imageUrl:
      "https://frankfurt.apollo.olxcdn.com/v1/files/0ferl08tfpit-UZ/image;s=1000x700"),
];

