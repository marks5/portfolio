import 'package:flutter/material.dart';
import 'package:website/widget/menu.dart';

class Projects extends StatelessWidget {
  static const routePath = "/projects";
  
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