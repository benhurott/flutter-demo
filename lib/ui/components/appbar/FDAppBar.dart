import 'package:flutter/material.dart';

class FDAppBar {
  static Widget create(String title) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(
            color: Colors.blue
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0.0,
      iconTheme: IconThemeData(
          color: Colors.blue
      ),
    );
  }
}