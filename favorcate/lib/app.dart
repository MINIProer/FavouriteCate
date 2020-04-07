import 'package:favorcate/ui/shared/screen_fit_tool.dart';
import 'package:flutter/material.dart';

import 'core/router/router.dart';
import 'ui/shared/app_theme.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    // 初始化屏幕参数工具类
    JRScreenFitTool.initialize();

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
