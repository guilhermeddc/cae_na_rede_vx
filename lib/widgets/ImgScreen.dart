import 'package:flutter/material.dart';

class ImgScreen extends StatelessWidget {
  final String text;

  ImgScreen(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Center(
        child: Image.asset("assets/images/$text"),
      ),
    );
  }
}
