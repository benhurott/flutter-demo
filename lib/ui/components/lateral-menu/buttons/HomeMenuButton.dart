import 'package:flutter/material.dart';
import 'package:flutter_demo/ui/components/lateral-menu/buttons/BaseMenuButton.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeMenuButton extends BaseMenuButton {

//  @override
//  String getIconName() {
//    return "lib/ui/images/menu_home.png";
//  }

  @override
  Icon getIcon(Color color) {
    return new Icon(FontAwesomeIcons.home, color: color);
  }

  onSelect() {
    //todo
  }
}