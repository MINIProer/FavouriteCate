import 'package:favorcate/core/model/meal_model.dart';
import 'package:flutter/material.dart';
import 'package:favorcate/core/extensions/int_extension.dart';

class JRDetailStepItem extends StatelessWidget {
  final int _stepNo;
  final String _stepString;

  JRDetailStepItem(this._stepNo, this._stepString);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(15.px, 0.px, 15.px, 10.px),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container( // 可以使用CircleAvatar组件代替实现圆形效果
                decoration: BoxDecoration(
                  color: Colors.pink[400],
                  borderRadius: BorderRadius.circular(15.px)
                ),
                width: 30.px,
                height: 30.px,
                child: Center(
                  child: Text('# ${_stepNo + 1}', style: TextStyle(color: Colors.white),),
                ),
              ),
              SizedBox(
                width: 10.px,
              ),
              Expanded(
                child: Text(_stepString)
              )
            ],
          ),
          SizedBox(
            height: 10.px,
          ),
          Divider(
            height: 1.px,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
