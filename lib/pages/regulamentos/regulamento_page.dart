import 'package:cae_na_rede_v2/pages/regulamentos/pages/auxilio_page.dart';
import 'package:cae_na_rede_v2/pages/regulamentos/pages/concessao_page.dart';
import 'package:cae_na_rede_v2/pages/regulamentos/pages/convivencia_page.dart';
import 'package:cae_na_rede_v2/pages/regulamentos/pages/moradia_page.dart';
import 'package:flutter/material.dart';

class Regulamento extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Regulamentos"),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: "Auxílios",
              ),
              Tab(
                text: "Moradia",
              ),
              Tab(
                text: "Convivência",
              ),
              Tab(
                text: "Concessão",
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          Auxilio(),
          Moradia(),
          Convivencia(),
          Concessao(),
        ]),
      ),
    );
  }
}
