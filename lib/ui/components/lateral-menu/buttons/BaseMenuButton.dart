import 'package:flutter/material.dart';
import 'package:flutter_demo/ui/theme/ColorPalette.dart';


abstract class BaseMenuButton extends StatelessWidget {

  String getIconName();
  void onSelect();

  @override
  Widget build(BuildContext context) {
    return new Container(
      color: ColorPalette.primaryBlue,
      height: 80.0,
      child: new Center(
        child: new Container(
          height: 30.0,
          width: 30.0,
          child: new Image.asset(this.getIconName()),
        ),
      ),
    );
  }
}