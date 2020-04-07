import 'package:flutter/material.dart';

class JRCategoryModel {
  String id;
  String title;
  String color;
  
  JRCategoryModel({this.id, this.title, this.color});

  JRCategoryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    color = json['color'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['title'] = title;
    data['color'] = color;

    return data;
  }

  Color get getRealColor {
    // 1.将字符串Color转成16进制的数字
    final colorInt = int.parse(color, radix: 16);
    // 2.将透明度加入上述colorInt
    Color realColor = Color(colorInt | 0xFF000000);

    return realColor;
  }
}
