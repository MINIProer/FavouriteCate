import 'package:flutter/material.dart';

import 'package:favorcate/core/extensions/int_extension.dart';

class JRDrawerMenuItem extends StatelessWidget {
  final IconData _iconData;
  final String _menuTitle;

  JRDrawerMenuItem(this._iconData, this._menuTitle);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Theme.of(context).canvasColor,
      child: Row(
        children: <Widget>[
          Icon(_iconData, size: 20.px, color: Colors.grey[500]),
          SizedBox(width: 20.px),
          Text(
            _menuTitle,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
