import 'package:flutter/material.dart';
import 'package:flutter_demo/ui/theme/ColorPalette.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

abstract class BaseMenuButton extends StatelessWidget {

  Icon getIcon(Color color);
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
          child: () {
            var icon = this.getIcon(Colors.white);
            return icon;
          }()
        ),
      ),
    );
  }
}