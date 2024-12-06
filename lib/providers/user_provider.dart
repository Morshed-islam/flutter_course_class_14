import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  String _name = "Guest";

  String get name => _name;

  void updateName(String newName) {
    _name = newName;
    notifyListeners();
  }
}