import 'package:cae_na_rede_v2/widgets/itemList.dart';
import 'package:cae_na_rede_v2/widgets/linkButton.dart';
import 'package:cae_na_rede_v2/widgets/subTitleList.dart';
import 'package:cae_na_rede_v2/widgets/titleList.dart';
import 'package:cae_na_rede_v2/widgets/titleScreen.dart';
import 'package:flutter/material.dart';

class Cursos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            TitleScreen("Cursos", 30.0),
            TitleList("No campus de São Vicente do Sul, são ofertados os seguintes cursos:"),
            SubTitleList("Ensino Médio Integrado"),
            ItemList("Técnico em Administração"),
            ItemList("Técnico em Agropecuária"),
            ItemList("Técnico em Alimentos"),
            ItemList("Técnico em Manutenção e Suporte em Informática"),
            SubTitleList("Subsequentes"),
            ItemList("Agricultura"),
            ItemList("Alimentos"),
            ItemList("Informática"),
            ItemList("Zootecnia"),
            TitleList("Graduação:"),
            SubTitleList("Bacharelados"),
            ItemList("Agronomia"),
            ItemList("Administração"),
            SubTitleList("Tecnologia"),
            ItemList("Análise e Desenvolvimento de Sistemas"),
            ItemList("Gestão Pública"),
            SubTitleList("Licenciaturas"),
            ItemList("Química"),
            ItemList("Ciências Biológicas"),
          ],
        ),
      ),
      floatingActionButton: LinkButton("https://www.iffarroupilha.edu.br/projeto-pedag%c3%b3gico-de-curso/campus-são-vicente-do-sul"),
    );
  }
}
