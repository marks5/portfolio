import 'package:flutter/material.dart';
import 'package:website/contact.dart';
import 'package:website/homepage.dart';
import 'package:website/projects.dart';
import 'package:website/widget/button.dart';

class Menu extends StatelessWidget {
  Menu({@required this.path});
  final String path;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Buttonn(
              actualPath: path,
              newRoute: Homepage.routePath,
              title: "Inicio"),
          VerticalDivider(),
          Buttonn(
              actualPath: path,
              newRoute: Projects.routePath,
              title: "Projetos"),
          VerticalDivider(),
          Buttonn(
            actualPath: path,
            newRoute: Contact.routePath,
            title: "Contato",
          )
        ],
      ),
    );
  }
}
