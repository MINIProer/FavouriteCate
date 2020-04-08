import 'package:favorcate/core/model/category_model.dart';
import 'package:favorcate/core/extensions/int_extension.dart';

import 'package:flutter/material.dart';

class JRCategoryItem extends StatelessWidget {
  final JRCategoryModel _categoryModel;

  JRCategoryItem(this._categoryModel);

  @override
  Widget build(BuildContext context) {
    final categoryBgColor = _categoryModel.getRealColor;

    return Container(
      decoration: BoxDecoration(
          color: _categoryModel.getRealColor,
          borderRadius: BorderRadius.circular(12.px),
          gradient: LinearGradient(
              colors: [categoryBgColor.withOpacity(0.7), categoryBgColor])),
      alignment: Alignment.center,
      child: Text(
        _categoryModel.title,
        style: Theme.of(context)
            .textTheme
            .display2
            .copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }
}
