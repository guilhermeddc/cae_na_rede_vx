import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TitleScreen extends StatelessWidget {
  final String text;
  final double font;
  final cor;

  TitleScreen(this.text, this.font, {this.cor = Colors.green});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: font,
            color: cor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
