import 'package:flutter/material.dart';

class Drawwer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(padding: EdgeInsets.zero, children: <Widget>[
        ListTile(
          title: Text('Sobre'),
          onTap: () {},
        )
      ]),
    );
  }
}
