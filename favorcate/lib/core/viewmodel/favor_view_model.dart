import 'package:favorcate/core/model/meal_model.dart';
import 'package:flutter/material.dart';

class JRFavorViewModel extends ChangeNotifier {
  List<JRMealModel> _favorMeals = [];

  List<JRMealModel> get favorMeals {
    return _favorMeals;
  }

  void addMeal(JRMealModel meal) {
    _favorMeals.add(meal);
    notifyListeners();
  }

  void removeMeal(JRMealModel meal) {
    _favorMeals.remove(meal);
    notifyListeners();
  }

  bool isFavor(JRMealModel meal) {
    return _favorMeals.contains(meal);
  }

  void handleMeal(JRMealModel meal) {
    if (isFavor(meal)) {
      removeMeal(meal);
    } else {
      addMeal(meal);
    }
  }
}
