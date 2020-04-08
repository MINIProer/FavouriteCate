import 'package:flutter/material.dart';

import 'package:favorcate/core/model/category_model.dart';
import 'package:favorcate/core/services/json_parse.dart';
import 'package:favorcate/core/extensions/int_extension.dart';

import 'home_category_item.dart';

/**
 * FutureBuilder
 * 注意：
 *  1.这种写法适用于刷新不频繁的页面【如果有上啦加载更多则不适用】
 */

class JRHomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return FutureBuilder<List<JRCategoryModel>>(
        future: JRJsonParse.getCategoryData(),
        builder: (ctx, snapShot) {
          if (!snapShot.hasData) return Center(child: CircularProgressIndicator(),);
          if (snapShot.error != null) return Center(child: Text('请求失败'));

          final categories = snapShot.data;

          return GridView.builder(
              padding: EdgeInsets.all(20.px),
              itemCount: categories.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  // 固定个数
                  crossAxisCount: 2,
                  crossAxisSpacing: 20.px,
                  mainAxisSpacing: 20.px,
                  childAspectRatio: 1.5),
              itemBuilder: (ctx, index) {
                return JRCategoryItem(categories[index]);
              });
        });
  }
}
