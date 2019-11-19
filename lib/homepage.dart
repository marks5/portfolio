import 'package:flutter/material.dart';
import 'package:website/widget/menu.dart';

class Homepage extends StatefulWidget {
  static const routePath = "/";

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var img = "https://picsum.photos/250?image=9";
    print(size);
    return Scaffold(
        body: Center(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 20.0),
            child: Image.network(img),
          ),
          SizedBox(height: 20),
          Hero(tag: "menu", child: Menu(path: Homepage.routePath,)),
          SizedBox(height: 20)
        ],
      ),
    ));
  }
}
