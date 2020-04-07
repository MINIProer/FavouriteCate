import 'dart:convert';

import 'package:favorcate/core/model/category_model.dart';
import 'package:flutter/services.dart';

class JRJsonParse {
  // 获取分类数据
  static Future<List<JRCategoryModel>> getCategoryData() async {
    // 1.加载json文件(loadString是异步的)
    final jsonString = await rootBundle.loadString('assets/json/category.json');

    // 2.将jsonString转成Map/List
    final result = json.decode(jsonString);

    // 3.将Map中的内容转成一个个对象
    final resultList = result['category'];

    List<JRCategoryModel> categorys = [];
    for (var json in resultList) {
      categorys.add(JRCategoryModel.fromJson(json));
    }

    return categorys;
  }
}
