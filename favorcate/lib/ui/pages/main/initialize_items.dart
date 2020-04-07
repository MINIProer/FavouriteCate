import 'package:favorcate/ui/pages/favor/favor.dart';
import 'package:favorcate/ui/pages/home/home.dart';
import 'package:flutter/material.dart';

// pages
final List<Widget> pages = [
  JRHomeScreen(),
  JRFavorScreen()
];

// tabbarItems
final List<BottomNavigationBarItem> items = [
  BottomNavigationBarItem(
    title: Text('首页'),
    icon: Icon(Icons.home)
  ),
  BottomNavigationBarItem(
    title: Text('收藏'),
    icon: Icon(Icons.star)
  ),
]; 
