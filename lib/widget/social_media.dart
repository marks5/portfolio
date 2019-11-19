import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMedia extends StatelessWidget {
  SocialMedia(
      {@required this.icon,
      @required this.color,
      @required this.url,
      this.text});
  final Color color;
  final IconData icon;
  final String url;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: InkWell(
      splashColor: color,
      onTap: _launchForMe,
      child: Container(
        width: 250,
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              color: color,
            ),
            SizedBox(
              width: 10,
            ),
            Text(text, style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    ));
  }

  _launchForMe() async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
