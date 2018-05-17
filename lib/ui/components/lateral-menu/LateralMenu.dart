import 'package:flutter/material.dart';
import 'package:flutter_demo/ui/theme/ColorPalette.dart';
import 'package:flutter_demo/ui/components/lateral-menu/MenuButton.dart';
import 'package:flutter_demo/ui/components/lateral-menu/MenuSection.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const iconColor = Colors.white;

class LateralMenu extends StatelessWidget{

  LateralMenu({ Function onMenuSelected }) {
    this.onMenuSelected = onMenuSelected ?? (MenuSection menu){};
  }

  Function onMenuSelected;

  Widget _renderMenuButtonDivisor() {
    return new Container(
      color: Colors.white.withOpacity(0.2),
      height: 1.0,
    );
  }

  _onHomeSelected() {
    this.onMenuSelected(MenuSection.home);
  }

  _onChatSelected() {
    this.onMenuSelected(MenuSection.messenger);
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      color: ColorPalette.primaryBlue, width: 80.0,
      child: new SafeArea(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            this._renderMenuButtonDivisor(),
            new MenuButton(icon: new Icon(FontAwesomeIcons.home, color: iconColor), onSelect: this._onHomeSelected),
            this._renderMenuButtonDivisor(),
            new MenuButton(icon: new Icon(FontAwesomeIcons.comments, color: iconColor), onSelect: this._onChatSelected),
            this._renderMenuButtonDivisor()
          ],
        )
      )
    );
  }
}