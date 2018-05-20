import 'package:flutter/material.dart';
import 'package:flutter_demo/ui/theme/ColorPalette.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchBar extends StatelessWidget {

  SearchBar({ this.onChange }) {
    this._controller = new TextEditingController();
    this._controller.addListener(() {
      if (this.onChange == null) {
        return;
      }

      this.onChange(this.getText());
    });
  }

  final Function onChange;

  TextEditingController _controller;

  String getText() {
    return this._controller.text;
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 100.0,
      child: new Center(
        child: new Padding(
          padding: new EdgeInsets.only(left: 20.0, right: 20.0),
          child: new Container(
            height: 40.0,
            decoration: new BoxDecoration(
              color: Colors.white,
              borderRadius: new BorderRadius.all(new Radius.circular(20.0))
            ),
            child: new Padding(
              padding: new EdgeInsets.only(left: 10.0),
              child: new Row(
                children: <Widget>[
                  new Icon(FontAwesomeIcons.search, color: Colors.grey, size: 20.0),
                  new Expanded(
                    child: new Padding(
                      padding: new EdgeInsets.only(left: 10.0),
                      child: new EditableText(
                        controller: this._controller,
                        focusNode: new FocusNode(),
                        style: new TextStyle(
                            color: Colors.grey
                        ),
                        cursorColor: ColorPalette.primaryBlue
                      ),
                    ),
                  )
                ],
              ),
            )
          ),
        )
      ),
    );
  }
}