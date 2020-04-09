import 'package:flutter/material.dart';
import 'package:favorcate/core/extensions/int_extension.dart';

class JROperationItem extends StatelessWidget {
  final Widget _icon;
  final String _title;

  JROperationItem(this._icon, this._title);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        _icon,
        SizedBox(width: 5.px,),
        Text(_title)
      ],
    );
  }
}
