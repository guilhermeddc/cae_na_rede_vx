import 'package:cae_na_rede_v2/pages/programas/pages/nutricional_page_pdf.dart';
import 'package:cae_na_rede_v2/pages/programas/pages/apoio_page.dart';
import 'package:cae_na_rede_v2/pages/programas/pages/lazer_page.dart';
import 'package:flutter/material.dart';

class Programa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Programas"),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: "Nutricional",
              ),
              Tab(
                text: "Apoio",
              ),
              Tab(
                text: "Lazer",
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          Nutricional(),
          Apoio(),
          Lazer(),
        ]),
      ),
    );
  }
}
