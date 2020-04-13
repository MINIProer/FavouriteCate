import 'package:favorcate/core/viewmodel/filter_view_model.dart';
import 'package:favorcate/ui/shared/screen_fit_tool.dart';
import 'package:favorcate/ui/widgets/filter_Item.dart';
import 'package:flutter/material.dart';

import 'package:favorcate/core/extensions/int_extension.dart';
import 'package:provider/provider.dart';

class JRFilterContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        setupFilterTitleArea(),
        setupFilterContentArea(context)
      ],
    ));
  }

  Widget setupFilterTitleArea() {
    return Container(
        padding: EdgeInsets.all(15.px),
        child: Center(
          child: Text('展示你的选择',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
        ));
  }

  Widget setupFilterContentArea(BuildContext context) {
    return Expanded(
        child: Consumer<JRFilterViewModel>(builder: (context, filterVM, child) {
      return ListView(
        children: <Widget>[
          JRFilterItem('无谷蛋白', '展示无谷蛋白食物', filterVM.isGlutenFree, (value) {
            filterVM.isGlutenFree = value;
          }),
          JRFilterItem('不含乳糖', '展示不含乳糖食物', filterVM.isLactoseFree, (value) {
            filterVM.isLactoseFree = value;
          }),
          JRFilterItem('普通素食者', '展示普通素食相关食物', filterVM.isVegetarian, (value) {
            filterVM.isVegetarian = value;
          }),
          JRFilterItem('严格素食者', '展示严格素食相关食物', filterVM.isVegan, (value) {
            filterVM.isVegan = value;
          })
        ],
      );
    }));
  }
}
