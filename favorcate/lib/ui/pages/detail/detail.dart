import 'package:favorcate/core/model/meal_model.dart';
import 'package:favorcate/ui/pages/detail/detail_content.dart';
import 'package:flutter/material.dart';

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
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.yellow[700],
          child: Icon(Icons.favorite_border, color: Colors.black,),
          onPressed: () {
            print('收藏');
          }),
    );
  }
}
