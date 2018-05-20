import 'package:flutter/material.dart';
import 'package:flutter_demo/ui/theme/ColorPalette.dart';
import 'package:flutter_demo/ui/components/searchbar/SearchBar.dart';
import 'package:flutter_demo/ui/pages/messenger/MessengerContactRow.dart';
import 'package:flutter_demo/domain/model/ChatContact.dart';

List<ChatContact> mockedChats = [
  new ChatContact(
    avatarUrl: 'http://www.laifi.com/usuario/59/laifi/19220314_59_56912701_6362.jpg',
    name: 'Frozen Heard',
    lastMessage: 'I love this framework, but some things is so much verbose'
  )
];

class MessengerPage extends StatelessWidget {
  Widget _renderChatList() {
    return new ListView(
      children: mockedChats.map((chat) => new MessengerContactRow(
        avatarUrl: chat.avatarUrl,
        name: chat.name,
        lastMessage: chat.lastMessage,
        onSelect: this._openChat(chat),
      )).toList()
    );
  }

  _openChat(ChatContact chat) {

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