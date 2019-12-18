import 'package:cae_na_rede_v2/pages/politicas/pages/acoes_page_pdf.dart';
import 'package:cae_na_rede_v2/pages/politicas/pages/inclusao_page.dart';
import 'package:cae_na_rede_v2/pages/politicas/pages/saude_page.dart';
import 'package:cae_na_rede_v2/pages/politicas/pages/violencia_page.dart';
import 'package:flutter/material.dart';

class Politica extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Políticas"),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: "Saúde",
              ),
              Tab(
                text: "Inclusão",
              ),
              Tab(
                text: "Ações",
              ),
              Tab(
                text: "Anti Violência",
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          Saude(),
          Inclusao(),
          Acoes(),
          Violencia(),
        ]),
      ),
    );
  }
}