import 'package:favorcate/core/viewmodel/favor_view_model.dart';
import 'package:favorcate/core/viewmodel/filter_view_model.dart';
import 'package:favorcate/core/viewmodel/meal_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app.dart';

void main() {
  // Provider -> ViewModel/Provider/Consumer(Selector)
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (ctx) => JRFilterViewModel()),
    ChangeNotifierProxyProvider<JRFilterViewModel, JRMealViewModel>(
      create: (ctx) =>
          JRMealViewModel(), // 当第一个Consumer使用到viewmodel的时候再去创建【懒加载】
      update: (ctx, filterVM, mealVM) {
        mealVM.updateFilters(filterVM);
        return mealVM;
      },
    ),
    ChangeNotifierProvider(create: (ctx) => JRFavorViewModel()),
  ], child: MyApp()));
}
