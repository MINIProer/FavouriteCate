import 'package:favorcate/core/model/category_model.dart';
import 'package:favorcate/core/model/meal_model.dart';
import 'package:favorcate/core/viewmodel/meal_view_model.dart';
import 'package:favorcate/ui/widgets/meal_item.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:collection/collection.dart';

class JRMealContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 获取首页传递的类别模型参数
    final category =
        ModalRoute.of(context).settings.arguments as JRCategoryModel;
    return Selector<JRMealViewModel, List<JRMealModel>>(
      selector: (ctx, mealVM) => mealVM.meals.where((meal) => meal.categories.contains(category.id)).toList(), // 过滤
      shouldRebuild: (prev, next) => !ListEquality().equals(prev, next), // 比较两个数组是否相同(不相同的时候才重新build)
      builder: (ctx, meals, child) {
        return ListView.builder(
          itemCount: meals.length,
          itemBuilder: (ctx, index) {
            JRMealModel mealModel = meals[index];
            return JRMealItem(mealModel);
        });
      }, 
    );
  }
}

/**
 * 注意：
 *  Consumer中只要数据发生改变，就会重新build，而且这里的过滤需要写where
 *  Selector中可以直接对代码进行过滤
 */

// class JRMealContent extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // 获取首页传递的类别模型参数
//     final category =
//         ModalRoute.of(context).settings.arguments as JRCategoryModel;
//     return Consumer<JRMealViewModel>(builder: (ctx, mealVM, child) {
//       print(mealVM.meals);
//       final meals = mealVM.meals
//           .where((meal) => meal.categories.contains(category.id))
//           .toList(); // where起到过滤的作用
//       return ListView.builder(
//           itemCount: meals.length,
//           itemBuilder: (ctx, index) {
//             JRMealModel mealModel = meals[index];
//             return Text('${mealModel.categories} --- ${mealModel.title}');
//           });
//     });
//   }
// }
