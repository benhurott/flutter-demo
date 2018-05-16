import 'package:flutter/material.dart';
import 'package:flutter_demo/ui/components/lateral-menu/LateralMenu.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Row(
        children: <Widget>[
          new LateralMenu(),
          new Expanded(
            child: new Container(color: new Color(0xFFF4F5F9)),
          )
        ],
      ),
    );
  }
}