import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
            SizedBox(
              height: 20,
            ),
            SocialMedia(
              icon: FontAwesomeIcons.whatsapp,
              color: Colors.green,
              text: "+21 xxxxxxxxx",
              url: "https://www.google.com.br",
            ),
            SizedBox(
              height: 20,
            ),
            SocialMedia(
              icon: FontAwesomeIcons.facebook,
              color: Colors.blueAccent,
              text: "@marques5",
              url: "https://www.google.com.br",
            ),
            SizedBox(
              height: 20,
            ),
            SocialMedia(
              icon: FontAwesomeIcons.github,
              color: Colors.black,
              text: "@marks5",
              url: "https://www.google.com.br",
            ),
            SizedBox(
              height: 20,
            ),
            SocialMedia(
              icon: FontAwesomeIcons.twitter,
              color: Colors.lightBlue,
              text: "@marksao",
              url: "https://www.google.com.br",
            ),
            SizedBox(
              height: 20,
            ),
            Hero(tag: "menu", child: Menu(path: routePath)),
          ],
        ),
      ),
    );
  }
}
