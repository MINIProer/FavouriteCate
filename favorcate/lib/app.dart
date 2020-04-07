import 'package:flutter/material.dart';

import 'core/router/router.dart';
import 'ui/shared/app_theme.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '美食广场 ',
      theme: JRAppTheme.normalThemeData, // 主题
      initialRoute: JRRouter.initialRoute, // 默认启动页面
      routes: JRRouter.routers, // 路由映射关系
      onGenerateRoute: JRRouter.generateRoute, // 路由钩子函数
      onUnknownRoute: JRRouter.unknowRoute, // 空页面or未知页面
    );
  }
}