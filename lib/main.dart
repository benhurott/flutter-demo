import 'package:flutter/material.dart';
import 'package:flutter_demo/ui/pages/signin/SigninPage.dart';
import 'package:flutter_demo/ui/pages/home/HomePage.dart';

void main() => runApp(new MainApp());

class MainApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
          hintColor: Colors.blue,
          buttonColor: Colors.blue
      ),
      home: new Scaffold(
        body: new HomePage(),
      ),
    );
  }
}
