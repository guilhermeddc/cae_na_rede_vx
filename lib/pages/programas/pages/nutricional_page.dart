import 'package:cae_na_rede_v2/widgets/ImgScreen.dart';
import 'package:cae_na_rede_v2/widgets/itemList.dart';
import 'package:cae_na_rede_v2/widgets/linkButton.dart';
import 'package:cae_na_rede_v2/widgets/subTitleList.dart';
import 'package:cae_na_rede_v2/widgets/titleList.dart';
import 'package:cae_na_rede_v2/widgets/titleScreen.dart';
import 'package:flutter/material.dart';

class Nutricional extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Scaffold(
        body: ListView(
          children: <Widget>[
            TitleScreen("Segurança alimentar e nutricional", 30),
            ImgScreen("Burger.png"),
            TitleList("Segurança alimentar e nutricional"),
            SubTitleList("Finalidades do programa:"),
            ItemList("Garantir aos estudantes acesso aos refeitórios e à alimentação adequada no período em que estão na Instituição;"),
            ItemList("Contribuir para formação de práticas alimentares saudáveis dos alunos;"),
            ItemList("Regulamentar as formas de acesso dos usuários do Programa;"),
            ItemList("Normatizar as formas de aquisição, distribuição e preparo dos alimentos pela instituição."),
            SizedBox(height: 50.0),
          ],
        ),
        floatingActionButton: LinkButton(""),
      ),
    );
  }
}
