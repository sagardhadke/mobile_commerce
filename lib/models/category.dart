class Category {
  final String title;
  final String image;

  Category({required this.title, required this.image});
}

final List<Category> categoriesList = [
  Category(title: "Mobile", image: "assets/mobile.png"),
  Category(title: "Laptop", image: "assets/laptop.png"),
  Category(title: "Kitchen", image: "assets/kitchen.png"),
  Category(title: "Books", image: "assets/books.png"),
  Category(title: "Shoes", image: "assets/shoes.png"),
  Category(title: "Beauty", image: "assets/beauty.png"),
];
