import 'package:cae_na_rede_v2/widgets/linkButton.dart';
import 'package:cae_na_rede_v2/widgets/titleList.dart';
import 'package:cae_na_rede_v2/widgets/titleScreen.dart';
import 'package:flutter/material.dart';

class SIGAA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Scaffold(
        body: ListView(
          children: <Widget>[
            TitleScreen("SIGAA – Atividades acadêmicas", 30),
            Icon(
              Icons.timeline,
              size: 200,
              color: Colors.green,
            ),
            TitleList("Entre no link a baixo!")
          ],
        ),
        floatingActionButton: LinkButton("https://sig.iffarroupilha.edu.br/sigaa/public/home.jsf"),
      ),
    );
  }
}
