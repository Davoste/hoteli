import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:next_app/models/cart_item.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    //burgers
    Food(
        deescription:
            "Smoky sauce, crispy bacon and onion rings savory delight",
        imagePath: "lib/images/burgers/burger1.jpeg",
        name: "Bacon Burger",
        price: 1.99,
        availableAddons: [
          Addon(name: "grilled onion", price: 0.99),
          Addon(name: "japrons", price: 1.99),
          Addon(name: "BBQ souce", price: 2.99),
        ],
        category: FoodCategory.burgers),
    Food(
        deescription:
            "Smoky sauce, crispy bacon and onion rings savory delight",
        imagePath: "lib/images/burgers/burger2.jpeg",
        name: "Bacon Burger",
        price: 1.99,
        availableAddons: [
          Addon(name: "grilled onion", price: 0.99),
          Addon(name: "japrons", price: 1.99),
          Addon(name: "BBQ souce", price: 2.99),
        ],
        category: FoodCategory.burgers),
    Food(
        deescription:
            "Smoky sauce, crispy bacon and onion rings savory delight",
        imagePath: "lib/images/burgers/burger3.jpeg",
        name: "Bacon Burger",
        price: 1.99,
        availableAddons: [
          Addon(name: "grilled onion", price: 0.99),
          Addon(name: "japrons", price: 1.99),
          Addon(name: "BBQ souce", price: 2.99),
        ],
        category: FoodCategory.burgers),
    Food(
        deescription:
            "Smoky sauce, crispy bacon and onion rings savory delight",
        imagePath: "lib/images/burgers/burger4.jpeg",
        name: "Bacon Burger",
        price: 1.99,
        availableAddons: [
          Addon(name: "grilled onion", price: 0.99),
          Addon(name: "japrons", price: 1.99),
          Addon(name: "BBQ souce", price: 2.99),
        ],
        category: FoodCategory.burgers),
    Food(
        deescription:
            "Smoky sauce, crispy bacon and onion rings savory delight",
        imagePath: "lib/images/burgers/burger5.jpeg",
        name: "Bacon Burger",
        price: 1.99,
        availableAddons: [
          Addon(name: "grilled onion", price: 0.99),
          Addon(name: "japrons", price: 1.99),
          Addon(name: "BBQ souce", price: 2.99),
        ],
        category: FoodCategory.burgers),
    //salad
    Food(
        deescription:
            "Smoky sauce, crispy bacon and onion rings savory delight",
        imagePath: "lib/images/salads/salad1.jpg",
        name: "Bacon Burger",
        price: 1.99,
        availableAddons: [
          Addon(name: "grilled onion", price: 0.99),
          Addon(name: "japrons", price: 1.99),
          Addon(name: "BBQ souce", price: 2.99),
        ],
        category: FoodCategory.salad),
    Food(
        deescription:
            "Smoky sauce, crispy bacon and onion rings savory delight",
        imagePath: "lib/images/salads/salad2.jpeg",
        name: "Bacon Burger",
        price: 1.99,
        availableAddons: [
          Addon(name: "grilled onion", price: 0.99),
          Addon(name: "japrons", price: 1.99),
          Addon(name: "BBQ souce", price: 2.99),
        ],
        category: FoodCategory.salad),
    Food(
        deescription:
            "Smoky sauce, crispy bacon and onion rings savory delight",
        imagePath: "lib/images/salads/salad3.jpeg",
        name: "Bacon Burger",
        price: 1.99,
        availableAddons: [
          Addon(name: "grilled onion", price: 0.99),
          Addon(name: "japrons", price: 1.99),
          Addon(name: "BBQ souce", price: 2.99),
        ],
        category: FoodCategory.salad),
    Food(
        deescription:
            "Smoky sauce, crispy bacon and onion rings savory delight",
        imagePath: "lib/images/salads/salad4.jpeg",
        name: "Bacon Burger",
        price: 1.99,
        availableAddons: [
          Addon(name: "grilled onion", price: 0.99),
          Addon(name: "japrons", price: 1.99),
          Addon(name: "BBQ souce", price: 2.99),
        ],
        category: FoodCategory.salad),
    Food(
        deescription:
            "Smoky sauce, crispy bacon and onion rings savory delight",
        imagePath: "lib/images/salads/salad5.jpg",
        name: "Bacon Burger",
        price: 1.99,
        availableAddons: [
          Addon(name: "grilled onion", price: 0.99),
          Addon(name: "japrons", price: 1.99),
          Addon(name: "BBQ souce", price: 2.99),
        ],
        category: FoodCategory.salad),
    //sides
    Food(
        deescription:
            "Smoky sauce, crispy bacon and onion rings savory delight",
        imagePath: "lib/images/sides/sides1.jpg",
        name: "Bacon Burger",
        price: 1.99,
        availableAddons: [
          Addon(name: "grilled onion", price: 0.99),
          Addon(name: "japrons", price: 1.99),
          Addon(name: "BBQ souce", price: 2.99),
        ],
        category: FoodCategory.sides),
    Food(
        deescription:
            "Smoky sauce, crispy bacon and onion rings savory delight",
        imagePath: "lib/images/sides/sides2.jpeg",
        name: "Bacon Burger",
        price: 1.99,
        availableAddons: [
          Addon(name: "grilled onion", price: 0.99),
          Addon(name: "japrons", price: 1.99),
          Addon(name: "BBQ souce", price: 2.99),
        ],
        category: FoodCategory.sides),
    Food(
        deescription:
            "Smoky sauce, crispy bacon and onion rings savory delight",
        imagePath: "lib/images/sides/sides3.jpg",
        name: "Bacon Burger",
        price: 1.99,
        availableAddons: [
          Addon(name: "grilled onion", price: 0.99),
          Addon(name: "japrons", price: 1.99),
          Addon(name: "BBQ souce", price: 2.99),
        ],
        category: FoodCategory.sides),
    Food(
        deescription:
            "Smoky sauce, crispy bacon and onion rings savory delight",
        imagePath: "lib/images/sides/sides4.jpg",
        name: "Bacon Burger",
        price: 1.99,
        availableAddons: [
          Addon(name: "grilled onion", price: 0.99),
          Addon(name: "japrons", price: 1.99),
          Addon(name: "BBQ souce", price: 2.99),
        ],
        category: FoodCategory.sides),
    Food(
        deescription:
            "Smoky sauce, crispy bacon and onion rings savory delight",
        imagePath: "lib/images/sides/sides5.jpeg",
        name: "Bacon Burger",
        price: 1.99,
        availableAddons: [
          Addon(name: "grilled onion", price: 0.99),
          Addon(name: "japrons", price: 1.99),
          Addon(name: "BBQ souce", price: 2.99),
        ],
        category: FoodCategory.sides),
    //desserts
    Food(
        deescription:
            "Smoky sauce, crispy bacon and onion rings savory delight",
        imagePath: "lib/images/desserts/dessert1.jpeg",
        name: "Bacon Burger",
        price: 1.99,
        availableAddons: [
          Addon(name: "grilled onion", price: 0.99),
          Addon(name: "japrons", price: 1.99),
          Addon(name: "BBQ souce", price: 2.99),
        ],
        category: FoodCategory.dessert),
    Food(
        deescription:
            "Smoky sauce, crispy bacon and onion rings savory delight",
        imagePath: "lib/images/desserts/dessert2.jpg",
        name: "Bacon Burger",
        price: 1.99,
        availableAddons: [
          Addon(name: "grilled onion", price: 0.99),
          Addon(name: "japrons", price: 1.99),
          Addon(name: "BBQ souce", price: 2.99),
        ],
        category: FoodCategory.dessert),
    Food(
        deescription:
            "Smoky sauce, crispy bacon and onion rings savory delight",
        imagePath: "lib/images/desserts/dessert3.jpg",
        name: "Bacon Burger",
        price: 1.99,
        availableAddons: [
          Addon(name: "grilled onion", price: 0.99),
          Addon(name: "japrons", price: 1.99),
          Addon(name: "BBQ souce", price: 2.99),
        ],
        category: FoodCategory.dessert),
    Food(
        deescription:
            "Smoky sauce, crispy bacon and onion rings savory delight",
        imagePath: "lib/images/desserts/dessert4.jpg",
        name: "Bacon Burger",
        price: 1.99,
        availableAddons: [
          Addon(name: "grilled onion", price: 0.99),
          Addon(name: "japrons", price: 1.99),
          Addon(name: "BBQ souce", price: 2.99),
        ],
        category: FoodCategory.dessert),
    Food(
        deescription:
            "Smoky sauce, crispy bacon and onion rings savory delight",
        imagePath: "lib/images/desserts/dessert5.jpg",
        name: "Bacon Burger",
        price: 1.99,
        availableAddons: [
          Addon(name: "grilled onion", price: 0.99),
          Addon(name: "japrons", price: 1.99),
          Addon(name: "BBQ souce", price: 2.99),
        ],
        category: FoodCategory.dessert),
    //drinks
    Food(
        deescription:
            "Smoky sauce, crispy bacon and onion rings savory delight",
        imagePath: "lib/images/drinks/drink1.jpg",
        name: "Bacon Burger",
        price: 1.99,
        availableAddons: [
          Addon(name: "grilled onion", price: 0.99),
          Addon(name: "japrons", price: 1.99),
          Addon(name: "BBQ souce", price: 2.99),
        ],
        category: FoodCategory.drinks),
    Food(
        deescription:
            "Smoky sauce, crispy bacon and onion rings savory delight",
        imagePath: "lib/images/drinks/drink2.jpg",
        name: "Bacon Burger",
        price: 1.99,
        availableAddons: [
          Addon(name: "grilled onion", price: 0.99),
          Addon(name: "japrons", price: 1.99),
          Addon(name: "BBQ souce", price: 2.99),
        ],
        category: FoodCategory.drinks),
    Food(
        deescription:
            "Smoky sauce, crispy bacon and onion rings savory delight",
        imagePath: "lib/images/drinks/drink3.jpeg",
        name: "Bacon Burger",
        price: 1.99,
        availableAddons: [
          Addon(name: "grilled onion", price: 0.99),
          Addon(name: "japrons", price: 1.99),
          Addon(name: "BBQ souce", price: 2.99),
        ],
        category: FoodCategory.drinks),
    Food(
        deescription:
            "Smoky sauce, crispy bacon and onion rings savory delight",
        imagePath: "lib/images/drinks/drink4.jpeg",
        name: "Bacon Burger",
        price: 1.99,
        availableAddons: [
          Addon(name: "grilled onion", price: 0.99),
          Addon(name: "japrons", price: 1.99),
          Addon(name: "BBQ souce", price: 2.99),
        ],
        category: FoodCategory.burgers),
    Food(
        deescription:
            "Smoky sauce, crispy bacon and onion rings savory delight",
        imagePath: "lib/images/drinks/drink5.jpg",
        name: "Bacon Burger",
        price: 1.99,
        availableAddons: [
          Addon(name: "grilled onion", price: 0.99),
          Addon(name: "japrons", price: 1.99),
          Addon(name: "BBQ souce", price: 2.99),
        ],
        category: FoodCategory.drinks),
  ];
  /* 
 GETTTERS
 */
  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  String get deliveryAddress => _deliveryAddress;
  /* 
 OPERATIONS
 */
//user cart
  final List<CartItem> _cart = [];

  // manually enter address
  String _deliveryAddress = 'Uletewe Wapi?';
// add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    //check items areadiy in cart
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      //check if food items are the same
      bool isSameFood = item.food == food;

      //check if addons are the same
      bool isSameAddons =
          const ListEquality().equals(item.selectedAddon, selectedAddons);
      return isSameFood && isSameAddons;
    });
    //if item already exists
    if (cartItem != null) {
      cartItem.quantity++;
    }
    //otherwise add new item to cart
    else {
      _cart.add(CartItem(
        food: food,
        selectedAddon: selectedAddons,
      ));
    }
    notifyListeners();
  }

//remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);
    if (cartIndex != -1) {
      _cart[cartIndex].quantity--;
    } else {
      _cart.removeAt(cartIndex);
    }
    notifyListeners();
  }

//get total price of cart
  double getTotalPrice() {
    double total = 0.0;
    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;
      for (Addon addon in cartItem.selectedAddon) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

//number of items in cart
  int getTotalItemCount() {
    int totalItemCount = 0;
    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

//clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

//update delivery address
  void updateDeliveryAddress(String newAddress) {
    _deliveryAddress = newAddress;
    notifyListeners();
  }

  /* 
 HELPERS
 */
//generate receoipt
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt.");
    receipt.writeln();
    //format date and time
    String formattedDate =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("-----------------------");

    for (final cartItem in _cart) {
      receipt.writeln(
          "${cartItem.quantity}*${cartItem.food.name}- ${_formatPrice(cartItem.food.price)}");
      if (cartItem.selectedAddon.isNotEmpty) {
        receipt.writeln("Add-ons: ${_formatAddons(cartItem.selectedAddon)}");
      }
      receipt.writeln();
    }
    receipt.writeln("---------------------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");
    receipt.writeln();
    receipt.writeln("Delivering To: + $deliveryAddress");

    return receipt.toString();
  }

//fomat double value into money
  String _formatPrice(double price) {
    return "\$${price.toStringAsFixed(2)}";
  }

//format list of addons into struing summary
  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name}(${_formatPrice(addon.price)})")
        .join(",");
  }
}
