import 'package:flutter/material.dart';

class Buttonn extends StatelessWidget {
  Buttonn(
      {@required this.actualPath,
      @required this.newRoute,
      @required this.title,
      this.icon});
  final String actualPath;
  final String newRoute;
  final String title;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: actualPath == newRoute ? Theme.of(context).accentColor : null,
      textColor:
          actualPath == newRoute ? Theme.of(context).textSelectionColor : null,
      child: Text(title, style: TextStyle(fontSize: 16.0),),
      onPressed: () {
        if (actualPath != newRoute)
          Navigator.of(context).pushReplacementNamed(newRoute);
      },
    );
  }
}
