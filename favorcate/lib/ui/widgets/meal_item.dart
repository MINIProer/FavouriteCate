import 'package:favorcate/core/model/meal_model.dart';
import 'package:favorcate/core/viewmodel/favor_view_model.dart';
import 'package:favorcate/ui/pages/detail/detail.dart';
import 'package:flutter/material.dart';

import 'package:favorcate/core/extensions/int_extension.dart';
import 'package:favorcate/core/extensions/double_extension.dart';
import 'package:provider/provider.dart';

import 'operation_item.dart';

class JRMealItem extends StatelessWidget {
  final JRMealModel _meal;
  JRMealItem(this._meal);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: EdgeInsets.fromLTRB(10.px, 10.px, 10.px, 0),
        child: Card(
          elevation: 5.px,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.px)),
          child: Column(
            children: <Widget>[
              setupMealBasicInfoArea(context),
              setupOperationArea()
            ],
          ),
        ),
      ),
      onTap: () {
        Navigator.of(context)
            .pushNamed(JRDetailScreen.routeName, arguments: _meal);
      },
    );
  }

  Widget setupMealBasicInfoArea(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12.px),
              topRight: Radius.circular(12.px)),
          child: Image.network(
            _meal.imageUrl,
            fit: BoxFit.cover,
            width: double.infinity,
            height: 200.px,
          ),
        ),
        Positioned(
            right: 10.px,
            bottom: 10.px,
            child: Container(
              padding: EdgeInsets.all(5.px),
              decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(6.px),
                  color: Colors.black54),
              child: Text(
                _meal.title,
                style: Theme.of(context)
                    .textTheme
                    .display2
                    .copyWith(color: Colors.white),
              ),
            ))
      ],
    );
  }

  Widget setupOperationArea() {
    return Padding(
      padding: EdgeInsets.all(15.px),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          JROperationItem(Icon(Icons.schedule), '${_meal.duration}分钟'),
          JROperationItem(
              Icon(Icons.restaurant), '${_meal.getComplexityString}'),
          buildFavorOperationItem()
        ],
      ),
    );
  }

  Widget buildFavorOperationItem() {
    return Consumer<JRFavorViewModel>(builder: (context, favorVM, child) {
      final iconData = favorVM.isFavor(_meal)
          ? Icon(Icons.favorite, color: Colors.red)
          : Icon(Icons.favorite);
      final favorString = favorVM.isFavor(_meal) ? '已收藏' : '未收藏';

      return GestureDetector(
        child: JROperationItem(iconData, favorString),
        onTap: () {
          favorVM.handleMeal(_meal);
        },
      );
    });
  }
}
