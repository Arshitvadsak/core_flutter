import 'dart:io';

class Item {
  final String? item_name;
  final String? Item_cost;
  final String? item_quantity;

  Item({
    required this.item_name,
    required this.Item_cost,
    required this.item_quantity,
  });
}

class Globals {
  static List<Item> allItems = [];
  static String? firstname;
  static String? lastcost;
  static String? price;
 // static String? email;
  static File? image;
}

