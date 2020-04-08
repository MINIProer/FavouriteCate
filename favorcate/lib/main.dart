
import 'package:favorcate/core/viewmodel/meal_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app.dart';

void main() {
  
  // Provider -> ViewModel/Provider/Consumer(Selector)
  runApp(
    ChangeNotifierProvider(
      create: (ctx) => JRMealViewModel(), // 当第一个Consumer使用到viewmodel的时候再去创建【懒加载】
      child: MyApp(),
    )
  );
}
