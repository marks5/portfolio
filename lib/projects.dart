import 'package:flutter/material.dart';
import 'package:website/widget/menu.dart';

class Projects extends StatefulWidget {
  static const routePath = "/projects";
  @override
  _ProjectsState createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Hero(tag: "menu", child: Menu(path: Projects.routePath)),
          ],
        ),
      ),
    );
  }
}