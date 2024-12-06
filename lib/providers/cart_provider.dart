import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier {
  // List<String> _items = [];
  //
  // List<String> get items => _items;
  List<String> items = [];


  void addItem(String item) {
    items.add(item);
    notifyListeners();
  }
}