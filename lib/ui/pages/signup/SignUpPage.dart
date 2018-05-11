import 'package:flutter/material.dart';
import 'package:flutter_demo/ui/components/appbar/FDAppBar.dart';

class SignUpPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FDAppBar.create('New Account'),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: new EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text('hi')
            ],
          ),
        ),
      ),
    );
  }
}