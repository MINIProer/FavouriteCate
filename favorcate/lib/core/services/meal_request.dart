import 'package:favorcate/core/model/meal_model.dart';

import 'http_request.dart';

class JRMealRequest {
  static Future<List<JRMealModel>> getMealData() async {
    // 1.发送网络请求
    final url = '/meal';
    final result = await JRRequestTool.request(url);

    // 2.json转model
    final resultList = result['meal'];

    List<JRMealModel> mealList = [];
    for (var json in resultList) {
      mealList.add(JRMealModel.fromJson(json));
    }

    return mealList;
  }
}
