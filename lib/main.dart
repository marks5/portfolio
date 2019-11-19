import 'package:flutter/material.dart';
import 'package:website/homepage.dart';
import 'package:website/contact.dart';
import 'package:website/widget/page404.dart';
import 'package:website/projects.dart';

void main() => runApp(MyWebsitio());

class MyWebsitio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Marksao PAGE',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textSelectionColor: Colors.white
      ),
      onUnknownRoute: (RouteSettings setting) {
        return FadeRoute(page: Page404());
      },
      home: HomePage(),
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/':
            return FadeRoute(page: HomePage());
            break;
          case '/contact':
            return FadeRoute(page: Contact());
            break;
          case '/projects':
            return FadeRoute(page: Projects());
            break;
          default:
            return FadeRoute(page: Page404());
            break;
        }
      },
    );
  }
}

class FadeRoute extends PageRouteBuilder {
  final Widget page;
  FadeRoute({this.page})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}
