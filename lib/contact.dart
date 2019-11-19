import 'package:flutter/material.dart';
import 'package:website/widget/menu.dart';
import 'package:website/widget/social_media.dart';

class Contact extends StatelessWidget {
  static const routePath = "/contact";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            SizedBox(height: 20,),
            SocialMedia(),
            SizedBox(height: 20,),
            SocialMedia(),
            SizedBox(height: 20,),
            SocialMedia(),
            SizedBox(height: 20,),
            SocialMedia(),
            SizedBox(height: 20,),
            Hero(tag: "menu", child: Menu(path: routePath)),
          ],
        ),
      ),
    );
  }
}
