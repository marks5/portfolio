import 'package:flutter/material.dart';
import 'package:website/widget/horizontal_layout.dart';
import 'package:website/widget/menu.dart';
import 'package:website/widget/vertical_layout.dart';

class Projects extends StatelessWidget {
  static const routePath = "/projects";
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: _buildList(MediaQuery.of(context).size<Size.fromWidth(1024)),
        ),
      ),
    );
  }

  List<Widget> _buildList(bool vertical) {
    List<Widget> list = List<Widget>();
    list.add(SizedBox(height: 20));
    list.add(_hero());

    if(vertical){
      list.add(VerticalLayout());
    }else{
      list.add(HorizontalLayout());
    }

    return list;
  }

  Widget _hero() {
    return Hero(tag: "menu", child: Menu(path: Projects.routePath));
  }
}