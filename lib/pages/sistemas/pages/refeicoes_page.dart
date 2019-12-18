import 'package:cae_na_rede_v2/widgets/linkButton.dart';
import 'package:cae_na_rede_v2/widgets/titleList.dart';
import 'package:cae_na_rede_v2/widgets/titleScreen.dart';
import 'package:flutter/material.dart';

class Refeicoes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Scaffold(
        body: ListView(
          children: <Widget>[
            TitleScreen("IFFar – Refeições (cardápio)", 30),
            TitleList("Entre no link a baixo e escolha sua Unidade!")
          ],
        ),
        floatingActionButton: LinkButton("http://refeicoes.iffarroupilha.edu.br/"),
      ),
    );
  }
}
