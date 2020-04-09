import 'package:favorcate/core/model/meal_model.dart';
import 'package:favorcate/core/viewmodel/favor_view_model.dart';
import 'package:favorcate/ui/pages/detail/detail_content.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class JRDetailScreen extends StatelessWidget {
  static const String routeName = '/detail';

  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context).settings.arguments as JRMealModel;

    return Scaffold(
      appBar: AppBar(
        title: Text('${meal.title}'),
      ),
      body: JRDetailContent(meal),
      floatingActionButton: Consumer<JRFavorViewModel>(
        builder: (context, favorVM, child) {
          // 1.判断是否是收藏状态啊
          final iconData = favorVM.isFavor(meal)
              ? Icon(Icons.favorite, color: Colors.red)
              : Icon(Icons.favorite_border, color: Colors.black);

          return FloatingActionButton(
              backgroundColor: Colors.yellow[700],
              child: iconData,
              onPressed: () {
                favorVM.handleMeal(meal);
              });
        },
      ),
    );
  }
}
