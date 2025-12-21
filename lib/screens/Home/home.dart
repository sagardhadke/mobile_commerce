import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_commerce/models/product_model.dart';
import 'package:mobile_commerce/screens/Home/Widget/categoryItems.dart';
import 'package:mobile_commerce/screens/Home/Widget/product_cart.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentSlider = 0;
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        scrolledUnderElevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: IconButton(
              style: IconButton.styleFrom(
                backgroundColor: Color(0xffF5F5F5),
                padding: const EdgeInsets.all(15),
              ),
              onPressed: () {},
              iconSize: 30,
              icon: const Icon(Icons.notifications_outlined),
            ),
          ),
        ],
        leading: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: IconButton(
            style: IconButton.styleFrom(backgroundColor: Color(0xffF5F5F5)),
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Container(
                height: 55,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffF5F5F5),
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 5,
                ),
                child: Row(
                  children: [
                    const Icon(Icons.search, color: Colors.grey, size: 30),
                    const SizedBox(width: 10),
                    const Expanded(
                      // flex: 4,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search...",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Container(height: 25, width: 1.5, color: Colors.grey),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.tune, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(25),
                child: CachedNetworkImage(
                  height: 220,
                  width: double.infinity,
                  fit: BoxFit.fill,
                  imageUrl:
                      "https://c8.alamy.com/comp/2BWGH1Y/hot-sale-special-offer-banner-2BWGH1Y.jpg",
                ),
              ),
              SizedBox(height: 20),
              CategoryItems(),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Special For You",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              GridView.builder(
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemCount: myProducts.length,
                itemBuilder: (context, index) {
                  return ProductCard(product: myProducts[index]);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
