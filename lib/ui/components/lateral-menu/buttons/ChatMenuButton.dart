import 'package:flutter/material.dart';
import 'package:flutter_demo/ui/components/lateral-menu/buttons/BaseMenuButton.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ChatMenuButton extends BaseMenuButton {
//  @override
//  String getIconName() {
//    return "lib/ui/images/menu_chat.png";
//  }

  Icon getIcon(Color color) {
    return new Icon(FontAwesomeIcons.comments, color: color);
  }

  onSelect() {
    //todo
  }
}