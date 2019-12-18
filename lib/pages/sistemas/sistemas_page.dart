
import 'package:cae_na_rede_v2/pages/sistemas/pages/biblioteca_page.dart';
import 'package:cae_na_rede_v2/pages/sistemas/pages/refeicoes_page.dart';
import 'package:cae_na_rede_v2/pages/sistemas/pages/sigaa_page.dart';
import 'package:flutter/material.dart';

class Sistema extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Sistemas"),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: "Biblioteca",
              ),
              Tab(
                text: "SIGAA",
              ),
              Tab(
                text: "Refeições",
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          Biblioteca(),
          SIGAA(),
          Refeicoes(),
        ]),
      ),
    );
  }
}