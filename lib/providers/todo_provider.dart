import 'package:flutter/material.dart';

class ToDoProvider with ChangeNotifier {
  List<String> toDos = [];
  TextEditingController controller = TextEditingController();

  add() {
    if (controller.text != "") toDos.add(controller.text);
    controller.text = "";
    notifyListeners();
  }

  remove(String string) {
    toDos.remove(string);
    notifyListeners();
  }
}
