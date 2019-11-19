import 'package:flutter/material.dart';
import 'package:website/contact.dart';
import 'package:website/homepage.dart';
import 'package:website/projects.dart';
import 'package:website/widget/button.dart';

class Menu extends StatefulWidget {
  Menu({this.path});
  final String path;

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Buttonn(
              actualPath: widget.path,
              newRoute: Homepage.routePath,
              title: "Inicio"),
          VerticalDivider(),
          Buttonn(
              actualPath: widget.path,
              newRoute: Projects.routePath,
              title: "Projetos"),
          VerticalDivider(),
          Buttonn(
            actualPath: widget.path,
            newRoute: Contact.routePath,
            title: "Contato",
          )
        ],
      ),
    );
  }
}
