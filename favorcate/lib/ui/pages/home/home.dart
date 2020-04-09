import 'package:favorcate/ui/pages/home/home_app_bar.dart';
import 'package:favorcate/ui/pages/home/home_content.dart';
import 'package:flutter/material.dart';

import 'home_drawer.dart';

class JRHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: JRHomeAppBar(),
      body: JRHomeContent(),
      drawer: JRHomeDrawer()
    );
  }
}
