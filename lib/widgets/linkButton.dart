import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkButton extends StatelessWidget {
  final String url;

  LinkButton(this.url);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.language),
      onPressed: () async {
        if (await canLaunch(url)) {
          await launch(url);
        } else {
          throw 'Could not launch $url';
        }
      },
    );
  }
}
