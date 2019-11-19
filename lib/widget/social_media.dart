import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMedia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: InkWell(
      splashColor: Colors.green,
      onTap: _launchForMe,
      child: Container(
        width: 250,
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              FontAwesomeIcons.whatsapp,
              color: Colors.green,
            ),
            SizedBox(
              width: 10,
            ),
            Text("+21 xxxxxxxxx",
                style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    ));
  }

  _launchForMe() async {
    const url = 'https://flutter.dev';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
