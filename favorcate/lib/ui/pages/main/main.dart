import 'package:favorcate/ui/pages/home/home_drawer.dart';
import 'package:favorcate/ui/pages/main/initialize_items.dart';
import 'package:favorcate/ui/shared/app_theme.dart';
import 'package:flutter/material.dart';

class JRMainScreen extends StatefulWidget {
  static const String routeName = '/'; // 默认路由使用'/'来表示

  @override
  _JRMainScreenState createState() => _JRMainScreenState();
}

class _JRMainScreenState extends State<JRMainScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _currentIndex, children: pages),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: items,
        selectedFontSize: JRAppTheme.bodyFontSize, // 点击切换保持文案字体一致k
        unselectedFontSize: JRAppTheme.bodyFontSize,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      drawer: JRHomeDrawer()
    );
  }
}
