import 'package:flutter/material.dart';

class Texxt extends StatelessWidget {
  Texxt({this.content});
  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 800),
      child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(content )),
    );
  }
}
