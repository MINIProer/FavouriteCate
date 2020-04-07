import 'package:flutter/material.dart';

class JRAppTheme {
  static const double bodyFontSize = 14;
  static const double smallFontSize = 16; // 小号字体
  static const double normalFontSize = 22; // 通用字体
  static const double largeFontSize = 24; // 大号字体

  static final Color normalTextColors = Colors.red; // 普通模式-文本颜色
  static final Color darkTextColors = Colors.green; // 黑暗模式-文本颜色

  // 普通模式-主题风格
  static final ThemeData normalThemeData = ThemeData(
    primarySwatch: Colors.pink,
    canvasColor: Color.fromRGBO(255, 254, 222, 1), // 设置全局页面背景色
    textTheme: TextTheme(
      body1: TextStyle(fontSize: bodyFontSize),
      display1: TextStyle(fontSize: smallFontSize),
      display2: TextStyle(fontSize: normalFontSize),
      display3: TextStyle(fontSize: largeFontSize),
    )
  );

  // 黑暗模式-主题风格
  static final ThemeData darkThemeData = ThemeData(
    primarySwatch: Colors.grey,
    textTheme: TextTheme(
      body1: TextStyle(fontSize: normalFontSize, color: darkTextColors)
    )
  );
}
