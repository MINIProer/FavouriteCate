import 'package:favorcate/ui/pages/detail/detail.dart';
import 'package:favorcate/ui/pages/filter/filter.dart';
import 'package:favorcate/ui/pages/main/main.dart';
import 'package:favorcate/ui/pages/meal/meal.dart';
import 'package:flutter/material.dart';

class JRRouter {
  static final String initialRoute = JRMainScreen.routeName; // 默认启动页面的路由

  // 路由映射关系
  static final Map<String, WidgetBuilder> routers = {
    JRMainScreen.routeName: (ctx) => JRMainScreen(),
    JRMealScreen.routeName: (ctx) => JRMealScreen(),
    JRDetailScreen.routeName: (ctx) => JRDetailScreen(),
  };

  // 后期扩展
  static final RouteFactory generateRoute = (settings) {
    if (settings.name == JRFilterScreen.routeName) {
      return MaterialPageRoute(
        builder: (ctx) {
          return JRFilterScreen();
        },
        fullscreenDialog: true
      );
    }

    return null;
  };

  static final RouteFactory unknowRoute = (settings) {
    return null;
  };
}
