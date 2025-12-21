import 'package:flutter/material.dart';

class Product {
  final String title;
  final String description;
  final String image;
  final String review;
  final String seller;
  final double price;
  final List<Color> colors;
  final String category;
  final double rate;
  int quantity;

  Product({
    required this.title,
    required this.review,
    required this.description,
    required this.image,
    required this.price,
    required this.colors,
    required this.seller,
    required this.category,
    required this.rate,
    required this.quantity,
  });
}

String camera = "assets/products/camera.png";
String laptop = "assets/products/laptop.png";
String laptop2 = "assets/products/laptop2.png";
String mobile = "assets/products/mobile.png";
String table = "assets/products/table.png";
String towel = "assets/products/towel.png";
String tshirt = "assets/products/tshirt.png";
String tv = "assets/products/tv.png";
String watch = "assets/products/watch.png";
String wireless = "assets/products/wireless.png";
String women = "assets/products/women.png";

final List<Product> myProducts = [
  Product(
    title: "Wireless Earbuds",
    description:
        "Enjoy high-quality sound with these sleek, stylish wireless earbuds. Perfect for long commutes or gym sessions.",
    image: wireless,
    price: 2500,
    seller: "Tech Zone",
    colors: [Colors.black, Colors.white, Colors.blue],
    category: "Electronics",
    review: "(230 Reviews)",
    rate: 4.5,
    quantity: 1,
  ),
  Product(
    title: "Gaming Laptop",
    description:
        "Powerful laptop designed for gaming with high performance, fast processors, and great battery life.",
    image: laptop,
    price: 55000,
    seller: "Gamer's Hub",
    colors: [Colors.black, Colors.grey],
    category: "Electronics",
    review: "(100 Reviews)",
    rate: 4.8,
    quantity: 1,
  ),
  Product(
    title: "Smartphone 5G",
    description:
        "Experience lightning-fast speeds with this sleek 5G smartphone, featuring an amazing camera and display.",
    image: mobile,
    price: 23000,
    seller: "Mobile Hub",
    colors: [Colors.blue, Colors.black, Colors.white],
    category: "Electronics",
    review: "(410 Reviews)",
    rate: 4.7,
    quantity: 1,
  ),
  Product(
    title: "Smartwatch",
    description:
        "Track your health, receive notifications, and manage tasks seamlessly with this stylish smartwatch.",
    image: watch,
    price: 3500,
    seller: "Tech Store",
    colors: [Colors.black, Colors.grey, Colors.blue],
    category: "Electronics",
    review: "(320 Reviews)",
    rate: 4.6,
    quantity: 1,
  ),
  Product(
    title: "Wooden Table",
    description:
        "A sturdy and elegant wooden table, perfect for home or office use. A great blend of design and utility.",
    image: table,
    price: 475,
    seller: "Furniture Shop",
    colors: [Colors.brown, Colors.orange],
    category: "Furniture",
    review: "(55 Reviews)",
    rate: 4.3,
    quantity: 1,
  ),
  Product(
    title: "Cotton Towel",
    description:
        "Soft, absorbent, and quick-drying cotton towel, perfect for daily use or travel.",
    image: towel,
    price: 250,
    seller: "Home Goods Store",
    colors: [Colors.white, Colors.blue, Colors.green],
    category: "Home Essentials",
    review: "(150 Reviews)",
    rate: 4.4,
    quantity: 1,
  ),
  Product(
    title: "Men's T-shirt",
    description:
        "A comfortable and breathable cotton t-shirt for men. Perfect for casual wear or exercise.",
    image: tshirt,
    price: 599,
    seller: "Fashion World",
    colors: [Colors.black, Colors.white, Colors.red],
    category: "Men's Fashion",
    review: "(180 Reviews)",
    rate: 4.5,
    quantity: 1,
  ),
  Product(
    title: "LED TV",
    description:
        "Experience high-quality visuals and crystal-clear sound with this budget-friendly LED TV.",
    image: tv,
    price: 22000,
    seller: "Electronics Store",
    colors: [Colors.black],
    category: "Electronics",
    review: "(90 Reviews)",
    rate: 4.7,
    quantity: 1,
  ),
  Product(
    title: "Camera",
    description:
        "Capture breathtaking photos and videos with this high-performance DSLR camera.",
    image: camera,
    price: 30000,
    seller: "Photo Zone",
    colors: [Colors.black, Colors.grey],
    category: "Electronics",
    review: "(150 Reviews)",
    rate: 4.8,
    quantity: 1,
  ),
  Product(
    title: "Women’s Saree",
    description:
        "Elegant and beautifully designed saree for women, perfect for weddings and festive occasions.",
    image: women,
    price: 5000,
    seller: "Ethnic Wear Store",
    colors: [Colors.red, Colors.green, Colors.yellowAccent],
    category: "Women’s Fashion",
    review: "(240 Reviews)",
    rate: 4.6,
    quantity: 1,
  ),
];
