import 'package:cae_na_rede_v2/pages/conhecendoIFFar/pages/pages/cursos_page.dart';
import 'package:cae_na_rede_v2/pages/conhecendoIFFar/pages/pages/historia_page.dart';
import 'package:cae_na_rede_v2/pages/conhecendoIFFar/pages/pages/organograma_page.dart';
import 'package:flutter/material.dart';

class ConhecendoIFFar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Conhecendo IFFar"),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: "História",
              ),
              Tab(
                text: "Organograma",
              ),
              Tab(
                text: "Cursos",
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          Historia(),
          Organograma(),
          Cursos(),
        ]),
      ),
    );
  }
}
