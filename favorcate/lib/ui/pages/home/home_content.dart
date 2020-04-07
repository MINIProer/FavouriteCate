import 'package:flutter/material.dart';

import 'package:favorcate/core/model/category_model.dart';
import 'package:favorcate/core/services/json_parse.dart';
import 'package:favorcate/core/extensions/int_extension.dart';

class JRHomeContent extends StatefulWidget {
  @override
  _JRHomeContentState createState() => _JRHomeContentState();
}

class _JRHomeContentState extends State<JRHomeContent> {
  List<JRCategoryModel> _categories = []; // 分类数据数组

  @override
  void initState() {
    super.initState();

    // 加载首页Json数据
    JRJsonParse.getCategoryData().then((res) {
      setState(() {
        _categories = res;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: EdgeInsets.all(20.px),
        itemCount: _categories.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            // 固定个数
            crossAxisCount: 2,
            crossAxisSpacing: 20.px,
            mainAxisSpacing: 20.px,
            childAspectRatio: 1.5),
        itemBuilder: (ctx, index) {
          final categoryBgColor = _categories[index].getRealColor;
          return Container(
            decoration: BoxDecoration(
                color: _categories[index].getRealColor,
                borderRadius: BorderRadius.circular(12),
                gradient: LinearGradient(colors: [
                  categoryBgColor.withOpacity(0.7),
                  categoryBgColor
                ])),
            alignment: Alignment.center,
            child: Text(
              _categories[index].title,
              style: Theme.of(context)
                  .textTheme
                  .display2
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          );
        });
  }
}
