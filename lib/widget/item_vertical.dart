import 'package:flutter/material.dart';

class ItemVertical extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      child: Container(
        height: 500,
        child: Stack(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.blueAccent,
            ),
            ListTile(
              title: Text(
                'Empresa XPTO',
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                'Projeto A',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ListTile(
                title: Text(
                  'Stack utilizada',
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  'Android, Firebase...',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
