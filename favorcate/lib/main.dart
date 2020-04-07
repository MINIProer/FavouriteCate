import 'package:favorcate/core/router/router.dart';
import 'package:favorcate/ui/shared/app_theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '美食广场 ',
      theme: JRAppTheme.normalThemeData,
      initialRoute: JRRouter.initialRoute, // 默认启动页面
      routes: JRRouter.routers, // 路由映射关系
      onGenerateRoute: JRRouter.generateRoute, // 路由钩子函数
      onUnknownRoute: JRRouter.unknowRoute, // 空页面or未知页面
    );
  }
}
