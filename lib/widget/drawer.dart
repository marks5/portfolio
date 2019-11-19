import 'package:flutter/material.dart';

class Drawwer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(padding: EdgeInsets.zero, children: <Widget>[
        // DrawerHeader(
        //   child: Column(
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: <Widget>[],
        //   ),
        //   decoration: BoxDecoration(
        //     color: Theme.of(context).accentColor,
        //   ),
        // ),
        ListTile(
          title: Text('Sobre'),
          onTap: () {},
        )
      ]),
    );
  }
}
