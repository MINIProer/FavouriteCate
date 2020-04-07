import 'package:favorcate/ui/pages/main/main.dart';
import 'package:flutter/material.dart';

class JRRouter {
  static final String initialRoute = JRMainScreen.routeName; // 默认启动页面的路由

  // 路由映射关系
  static final Map<String, WidgetBuilder> routers = {
    JRMainScreen.routeName: (ctx) => JRMainScreen()
  };

  // 后期扩展
  static final RouteFactory generateRoute = (settings) {
    return null;
  };

  static final RouteFactory unknowRoute = (settings) {
    return null;
  };
}
