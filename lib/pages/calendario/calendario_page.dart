import 'package:cae_na_rede_v2/widgets/linkButton.dart';
import 'package:cae_na_rede_v2/widgets/titleList.dart';
import 'package:cae_na_rede_v2/widgets/titleScreen.dart';
import 'package:flutter/material.dart';

class Calendario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Calendário Acadêmico"),
        ),
        body: Container(
          padding: EdgeInsets.all(8),
          child: ListView(
            children: <Widget>[
              TitleScreen("Calendário Acadêmico", 30),
              Icon(
                Icons.calendar_today,
                size: 200,
                color: Colors.green,
              ),
              TitleList(
                  "       Calendário acadêmico cursos Técnicos integrados ao ensino médio– 2019"),
            ],
          ),
        ),
        floatingActionButton: LinkButton(
            "https://www.iffarroupilha.edu.br/calend%C3%A1rio-acad%C3%AAmico?layout=item"),
      ),
    );
  }
}
