import 'package:flutter/material.dart';
import 'package:flutter_demo/ui/theme/ColorPalette.dart';

class MessengerContactRow extends StatelessWidget {

  MessengerContactRow({this.avatarUrl, this.name, this.lastMessage = '', this.onSelect});

  final String avatarUrl;
  final String name;
  final String lastMessage;
  final Function onSelect;

  Widget _renderAvatar() {
    const imageSize = 40.0;

    return new Container(
      width: 50.0,
      child: new Center(
        child: new Container(
          width: imageSize,
          height: imageSize,
          decoration: new BoxDecoration(
            borderRadius: new BorderRadius.circular(imageSize / 2.0),
            image: new DecorationImage(
              image: new NetworkImage(this.avatarUrl),
              fit: BoxFit.cover
            )
          ),
        ),
      ),
    );
  }

  Widget _renderInfo() {
    return new Expanded(
      child: new Container(
        child: new Padding(
          padding: new EdgeInsets.only(left: 10.0, right: 10.0),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text(
                this.name,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  color: ColorPalette.textBlack
                ),
              ),
              new Text(
                this.lastMessage,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _renderDate() {
    return new Container(
      width: 50.0,
      child: new Center(
        child: new Container(
          height: 15.0,
          width: 40.0,
          decoration: new BoxDecoration(
            color: Colors.white,
            borderRadius: new BorderRadius.circular(10.0) 
          ),
          child: new Center(
            child: new Text(
              '10 min',
              maxLines: 1,
              overflow: TextOverflow.clip,
              style: new TextStyle(fontSize: 8.0),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 100.0,
      decoration: new BoxDecoration(
        color: Colors.transparent,
        border: new Border(bottom: new BorderSide(color: Color(0xFFDFDEDE)))
      ),
      child: new Material(
        child: new InkWell(
          onTap: () {
            if (this.onSelect != null) {
              this.onSelect();
            }
          },
          child: new Row(
            children: <Widget>[
              this._renderAvatar(),
              this._renderInfo(),
              this._renderDate()
            ],
          ),
        ),
      ),
    );
  }
}