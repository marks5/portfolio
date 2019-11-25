import 'package:flutter/material.dart';
import 'package:website/widget/item_horizontal.dart';
import 'package:website/widget/item_vertical.dart';

class VerticalLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: ScrollPhysics(),
        children: <Widget>[
          ItemVertical(),
          ItemVertical(),
          ItemVertical(),
          ItemVertical(),
          ItemVertical(),
        ],
      ),
    );
  }
}
