import 'package:flutter/material.dart';
import 'package:flutter_demo/ui/components/lateral-menu/LateralMenu.dart';
import 'package:flutter_demo/ui/components/lateral-menu/MenuSection.dart';
import 'package:flutter_demo/ui/theme/ColorPalette.dart';
import 'package:flutter_demo/ui/pages/messenger/MessengerPage.dart';

class HomePage extends StatefulWidget {

  HomePage({Key key}): super(key: key);

  @override
  State<StatefulWidget> createState() {
    return new _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  MenuSection _currentPage = MenuSection.home;

  Widget _renderHomePage() {
    return new Container(color: ColorPalette.pageBackgroundGray);
  }

  Widget _getPage() {
    switch(this._currentPage) {
      case MenuSection.home:
        return this._renderHomePage();
      case MenuSection.messenger:
        return new MessengerPage();
      default:
        return null;
    }
  }

  _onMenuChanged(MenuSection section) {
    this.setState(() {
      this._currentPage = section;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Row(
        children: <Widget>[
          new LateralMenu(
            onMenuSelected: this._onMenuChanged,
          ),
          new Expanded(
            child: this._getPage(),
          )
        ],
      ),
    );
  }
}