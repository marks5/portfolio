import 'package:flutter/material.dart';
import 'package:website/widget/menu.dart';

class Contact extends StatelessWidget {
  static const routePath = "/contact";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: <Widget>[
            Hero(tag: "menu", child: Menu(path: routePath)),
          ],
        ),
      ),
    );
  }
}
