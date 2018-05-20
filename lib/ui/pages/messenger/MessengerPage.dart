import 'package:flutter/material.dart';
import 'package:flutter_demo/ui/theme/ColorPalette.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_demo/ui/components/searchbar/SearchBar.dart';

class MessengerPage extends StatelessWidget {
  Widget _renderChatList() {
    return new ListView(
      children: <Widget>[
        new Container(color: Colors.red, height: 60.0),
        new Container(color: Colors.orange, height: 60.0)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {

    return new Container(
      color: ColorPalette.pageBackgroundGray,
      child: new SafeArea(
        child: new Column(
          children: <Widget>[
            new SearchBar(
              onChange: (text) {
                print(text);
              },
            ),
            new Expanded(child: this._renderChatList())
          ],
        ),
      )
    );
  }
}