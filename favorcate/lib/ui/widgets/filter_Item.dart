import 'package:flutter/material.dart';

import 'package:favorcate/core/extensions/int_extension.dart';

class JRFilterItem extends StatelessWidget {
  final String _title;
  final String _subTitle;
  final bool value;
  final Function function;

  JRFilterItem(this._title, this._subTitle, this.value, this.function);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.px),
      child: Stack(
        children: <Widget>[
          Container(
            height: 64.px,
          ),
          Positioned(top: 10.px, left: 10.px, child: Text(_title, style: TextStyle(color: Colors.black, fontSize: 18))),
          Positioned(left: 10.px, bottom: 10.px, child: Text(_subTitle, style: TextStyle(color: Colors.grey[600]),)),
          Positioned(
              top: 10.px,
              right: 10.px,
              child: Switch.adaptive(value: value, onChanged: function))
        ],
      ),
    );
  }
}
