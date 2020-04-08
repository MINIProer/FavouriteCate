import 'package:favorcate/core/model/category_model.dart';
import 'package:flutter/material.dart';

class JRMealScreen extends StatelessWidget {
  static const String routeName = '/meal';

  @override
  Widget build(BuildContext context) {
    // 获取首页传递的类别模型参数
    final category = ModalRoute.of(context).settings.arguments as JRCategoryModel;

    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: Center(
        child: Text('meal list'),
      ),
    );
  }
}
