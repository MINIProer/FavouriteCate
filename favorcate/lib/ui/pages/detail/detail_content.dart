import 'package:favorcate/core/model/meal_model.dart';
import 'package:favorcate/ui/widgets/detail_step_item.dart';
import 'package:flutter/material.dart';
import 'package:favorcate/core/extensions/int_extension.dart';
import 'package:favorcate/core/extensions/double_extension.dart';

class JRDetailContent extends StatelessWidget {
  final JRMealModel _meal;

  JRDetailContent(this._meal);

  /**
   * 注意：
   *  ListView.build中又一个属性，shrinkWrap，可以让listView布局后，让外层container包裹其所有元素【使用physics属性，可以控制listView是否允许滚动】
   *  设置了shrinkWrap属性后，会在最后一行多出一些间距，可以通过设置padding来消除内边距
   */

  @override
  Widget build(BuildContext context) {
    return ListView.builder( // ListView.builder -》 使用SingleChildScrollView来代替
        itemCount: 5,
        itemBuilder: (context, index) {
          return mealItemConfigWithIndex(index);
        });
  }

  Widget mealItemConfigWithIndex(int index) {
    if (index == 0) {
      return setupTopMealImageArea();
    } else if (index == 1) {
      return setupTitleArae('制作材料');
    } else if (index == 2) {
      return setupMakingMaterialsContentArea();
    } else if (index == 3) {
      return setupTitleArae('步骤');
    } else {
      return setupStepsContentArea();
    }
  }

  Widget setupTopMealImageArea() {
    return Image.network(
      _meal.imageUrl,
      width: double.infinity,
      height: 250,
      fit: BoxFit.cover,
    );
  }

  Widget setupTitleArae(String title) {
    return Container(
      padding: EdgeInsets.all(10.px),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
    );
  }

  Widget setupMakingMaterialsContentArea() {
    return Padding(
      padding: EdgeInsets.fromLTRB(10.px, 0, 10.px, 0),
      child: Container(
        padding: EdgeInsets.all(10.px),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black45, width: .5.px()),
            borderRadius: BorderRadius.circular(5.px)),
        // height: 400.px,
        child: getMakingMaterialsDetailArea(),
      ),
    );
  }

  Widget getMakingMaterialsDetailArea() {
    List<Widget> materials = [];
    for (int i = 0; i < _meal.ingredients.length; i++) {
      materials.add(
        Container(
          decoration: BoxDecoration(
              color: Colors.yellow[700],
              borderRadius: BorderRadius.circular(4.px)),
          padding: EdgeInsets.all(5.px),
          width: double.infinity,
          child: Text('${_meal.ingredients[i]}'),
        ),
      );
      if (i != _meal.ingredients.length - 1) {
        materials.add(SizedBox(
          height: 10.px,
        ));
      }
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: materials,
    );
  }

  Widget setupStepsContentArea() {
    return Padding(
      padding: EdgeInsets.fromLTRB(10.px, 0, 10.px, 0),
      child: Container(
        padding: EdgeInsets.all(10.px),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black45, width: .5.px()),
            borderRadius: BorderRadius.circular(5.px)),
        child: getStepsDetailArea(),
      ),
    );
  }

  Widget getStepsDetailArea() {
    List<Widget> steps = [];

    for (int i = 0; i < _meal.steps.length; i++) {
      steps.add(JRDetailStepItem(i, _meal.steps[i]));
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: steps,
    );
  }
}
