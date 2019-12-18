import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TitleList extends StatelessWidget {
  final String text;

  TitleList(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(
          text,
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
