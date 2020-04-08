import 'package:favorcate/core/model/meal_model.dart';
import 'package:favorcate/core/services/meal_request.dart';
import 'package:flutter/material.dart';

class JRMealViewModel extends ChangeNotifier {
  List<JRMealModel> _meals = [];

  List<JRMealModel> get meals {
    return _meals;
  }

  JRMealViewModel() {
    // 注意： 异步数据在一些业务场景下需要共享(输入放入到viewModel中)【数据共享使用ViewModel/Provider/Consumer(Selector)】
    JRMealRequest.getMealData().then((res) {
      print(res);
      // 把最新的数据赋值给_meals
      _meals = res;

      // 如果app中存在多个页面对数据产生依赖，通知页面使用最新的数据进行更新构建
      notifyListeners();
    });
  }
}
