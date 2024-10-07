//food item
class Food {
  final String name;
  final String deescription;
  final String imagePath;
  final double price;
  final FoodCategory category;
  List<Addon> availableAddons;

  Food({
    required this.deescription,
    required this.imagePath,
    required this.name,
    required this.price,
    required this.availableAddons,
    required this.category,
  });
}

//food categories
enum FoodCategory {
  burgers,
  salad,
  sides,
  dessert,
  drinks,
}

//food adons
class Addon {
  String name;
  double price;

  Addon({
    required this.name,
    required this.price,
  });
}
