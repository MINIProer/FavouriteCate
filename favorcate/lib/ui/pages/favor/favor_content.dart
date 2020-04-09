import 'package:favorcate/core/model/meal_model.dart';
import 'package:favorcate/core/viewmodel/favor_view_model.dart';
import 'package:favorcate/ui/widgets/meal_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:collection/collection.dart';

class JRFavorContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<JRFavorViewModel>(builder: (ctx, favorVM, child) {
      final favorMeals = favorVM.getFavorMeals;
      return ListView.builder(
          itemCount: favorMeals.length,
          itemBuilder: (ctx, index) {
            JRMealModel mealModel = favorMeals[index];
            return JRMealItem(mealModel);
          });
    });
  }
}
