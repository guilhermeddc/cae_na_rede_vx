import 'package:flutter/material.dart';

class ItemList extends StatelessWidget {
  final String text;

  ItemList(this.text);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(text),
      leading: Icon(
        Icons.star,
        color: Colors.green,
      ),
    );
  }
}
