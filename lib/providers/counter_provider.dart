import 'package:flutter/material.dart';

class CountProvider with ChangeNotifier {
  int count = 0;

  incrementCounter() {
    count++;
    notifyListeners();
  }

  decrementCounter() {
    count--;
    if (count <= 0) {
      count = 0;
    }
    notifyListeners();
  }

  resettCounter() {
    count = 0;
    notifyListeners();
  }
}
