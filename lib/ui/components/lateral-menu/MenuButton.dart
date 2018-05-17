import 'package:flutter/material.dart';
import 'package:flutter_demo/ui/theme/ColorPalette.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MenuButton extends StatelessWidget {

  MenuButton({this.icon, this.onSelect});

  Icon icon;
  Function onSelect;

  @override
  Widget build(BuildContext context) {
    return new Container(
      color: ColorPalette.primaryBlue,
      height: 80.0,
      child: new Material(
        color: Colors.transparent,
        child: new InkWell(
          splashColor: Colors.white.withOpacity(0.2),
          onTap: this.onSelect,
          child: new Center(
            child: new Container(
                height: 30.0,
                width: 30.0,
                child: this.icon
            ),
          ),
        ),
      )
    );
  }
}