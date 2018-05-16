import 'package:flutter/material.dart';
import 'package:flutter_demo/ui/theme/ColorPalette.dart';
import 'package:flutter_demo/ui/components/lateral-menu/buttons/HomeMenuButton.dart';
import 'package:flutter_demo/ui/components/lateral-menu/buttons/ChatMenuButton.dart';

class LateralMenu extends StatelessWidget{

  Widget _renderMenuButtonDivisor() {
    return new Container(
      color: Colors.white.withOpacity(0.2),
      height: 1.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      color: ColorPalette.primaryBlue, width: 80.0,
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          this._renderMenuButtonDivisor(),
          new HomeMenuButton(),
          this._renderMenuButtonDivisor(),
          new ChatMenuButton(),
          this._renderMenuButtonDivisor()
        ],
      ),
    );
  }
}