import 'package:flutter/material.dart';

class JRFilterViewModel extends ChangeNotifier {
  bool _isGlutenFree = false; // 无谷蛋白
  bool _isLactoseFree = false; // 有无乳糖
  bool _isVegetarian = false; // 素食主义
  bool _isVegan = false; // 严格素食主义

  bool get isGlutenFree {
    return _isGlutenFree;
  }

  set isGlutenFree(bool value) {
    _isGlutenFree = value;
    notifyListeners();
  }

  bool get isLactoseFree {
    return _isLactoseFree;
  }

  set isLactoseFree(bool value) {
    _isLactoseFree = value;
    notifyListeners();
  }

  bool get isVegetarian {
    return _isVegetarian;
  }

  set isVegetarian(bool value) {
    _isVegetarian = value;
    notifyListeners();
  }

  bool get isVegan {
    return _isVegan;
  }

  set isVegan(bool value) {
    _isVegan = value;
    notifyListeners();
  }
}
