import 'package:favorcate/ui/pages/filter/filter.dart';
import 'package:favorcate/ui/widgets/drawer_menu_item.dart';
import 'package:flutter/material.dart';

import 'package:favorcate/core/extensions/int_extension.dart';

class JRHomeDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.px,
      color: Theme.of(context).canvasColor,
      child: Drawer(
        child: Column(
          children: <Widget>[setupTopTitleArea(), setupMenuArea(context)],
        ),
      ),
    );
  }

  Widget setupTopTitleArea() {
    return Container(
        width: double.infinity,
        height: 100.px,
        padding: EdgeInsets.only(top: 30.px),
        color: Colors.yellow[600],
        child: Center(
          child: Text(
            '开始动手',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ));
  }

  Widget setupMenuArea(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(15.px, 20.px, 15.px, 20.px),
      child: Column(
        children: <Widget>[
          JRDrawerMenuItem(
            Icons.restaurant,
            '进餐',
            handler: () {
              print('进餐');
              Navigator.of(context).pop();
            },
          ),
          SizedBox(height: 20.px),
          JRDrawerMenuItem(
            Icons.settings,
            '设置',
            handler: () {
              print('设置');
              Navigator.of(context).pushNamed(JRFilterScreen.routeName);
            },
          )
        ],
      ),
    );
  }
}
