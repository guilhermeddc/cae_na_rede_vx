import 'package:cae_na_rede_v2/widgets/linkButton.dart';
import 'package:cae_na_rede_v2/widgets/titleList.dart';
import 'package:cae_na_rede_v2/widgets/titleScreen.dart';
import 'package:flutter/material.dart';

class Registros extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Setor de Registros Acadêmicos"),
        ),
        body: Container(
          padding: EdgeInsets.all(8.0),
          child: ListView(
            children: <Widget>[
              TitleScreen("Registros Acadêmicos", 30),
              Icon(
                Icons.account_balance,
                size: 200,
                color: Colors.green,
              ),
              TitleList(
                  "       A Coordenção de Registros Acadêmicos (CRA) operacionaliza todas as atividades ligadas à vida acadêmica do estudante, desde seu ingresso até sua conclusão do curso."),
            ],
          ),
        ),
        floatingActionButton: LinkButton(
            "https://www.iffarroupilha.edu.br/registro-e-diplomas?layout=item"),
      ),
    );
  }
}
