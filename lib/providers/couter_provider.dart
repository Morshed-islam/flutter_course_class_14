import 'package:flutter/cupertino.dart';

class CounterProvider extends ChangeNotifier {

  int counter = 0;
  void increment() {
    counter++;
    notifyListeners();
  }

  void decrement() {
    counter--;
    notifyListeners();

  }

  void reset() {
    counter = 0;
    notifyListeners();

  }

}