import 'package:flutter/material.dart';

class IntroButton extends StatelessWidget {
  final cor;
  final IconData icon;
  final String text;
  final double radios;
  final Widget route;
  IntroButton(this.cor, this.icon, this.text, this.radios, this.route);

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    Size size = mediaQuery.size;

    return Container(
      child: FlatButton(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(icon),
            SizedBox(
              height: size.width / 50,
            ),
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: size.width / 46),
            )
          ],
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) {
                return route;
              },
            ),
          );
        },
        textColor: Colors.white70,
      ),
      height: size.height / 7.5,
      width: size.width / 4.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radios),
        color: cor,
      ),
    );
  }
}
