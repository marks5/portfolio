import 'package:flutter/material.dart';
import 'package:website/widget/item_horizontal.dart';

class HorizontalLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        physics: ScrollPhysics(),
        children: <Widget>[
          ItemHorizontal(),
          ItemHorizontal(),
          ItemHorizontal(),
          ItemHorizontal(),
          ItemHorizontal(),
        ],
      ),
    );
  }
}
