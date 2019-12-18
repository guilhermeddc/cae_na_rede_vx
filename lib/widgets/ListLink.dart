import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ListLink extends StatelessWidget {
  final  url;
  final String text;

  ListLink(this.url, this.text);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        text,
        textAlign: TextAlign.start,
      ),
      leading: Icon(
        Icons.link,
        color: Colors.green,
      ),
      trailing: Icon(Icons.play_arrow, color: Colors.green,),
      onTap: () async {
        if (await canLaunch(url)) {
          await launch(url);
        } else {
          throw 'Could not launch $url';
        }
      },
      dense: true,
    );
  }
}
