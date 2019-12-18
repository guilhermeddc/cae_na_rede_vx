import 'package:cae_na_rede_v2/widgets/ImgScreen.dart';
import 'package:cae_na_rede_v2/widgets/itemList.dart';
import 'package:cae_na_rede_v2/widgets/linkButton.dart';
import 'package:cae_na_rede_v2/widgets/subTitleList.dart';
import 'package:cae_na_rede_v2/widgets/titleList.dart';
import 'package:cae_na_rede_v2/widgets/titleScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

class Nutricional extends StatefulWidget {
  @override
  _NutricionalState createState() => _NutricionalState();
}

class _NutricionalState extends State<Nutricional> {
  bool _isLoading = false, _isInit = true;
  PDFDocument document;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Expanded(
              child: Center(
                child: _isInit
                    ? ListView(
                        children: <Widget>[
                          TitleScreen("Segurança alimentar e nutricional", 30),
                          ImgScreen("Burger.png"),
                          TitleList("Segurança alimentar e nutricional"),
                          SubTitleList("Finalidades do programa:"),
                          ItemList(
                              "Garantir aos estudantes acesso aos refeitórios e à alimentação adequada no período em que estão na Instituição;"),
                          ItemList(
                              "Contribuir para formação de práticas alimentares saudáveis dos alunos;"),
                          ItemList(
                              "Regulamentar as formas de acesso dos usuários do Programa;"),
                          ItemList(
                              "Normatizar as formas de aquisição, distribuição e preparo dos alimentos pela instituição."),
                          SizedBox(height: 30.0),
                        ],
                      )
                    : _isLoading
                        ? Center(
                            child: ListView(
                              children: <Widget>[
                                CircularProgressIndicator(),
                                SizedBox(height: 70.0),
                              ],
                            ),
                          )
                        : PDFViewer(
                            document: document,
                          ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(25),
              height: 65,
              width: 1000,
              color: Colors.green,
              child: Text(
                "SEGURANÇA ALIMENTAR",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            )
          ],
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            LinkButton(""),
            SizedBox(
              width: 20,
            ),
            FloatingActionButton(
              heroTag: 'btn1',
              child: Icon(Icons.book),
              onPressed: () {
                _loadFronAsstes();
              },
            ),
          ],
        ),
      ),
    );
  }

  _loadFronAsstes() async {
    setState(() {
      _isInit = false;
      _isLoading = true;
    });
    document = await PDFDocument.fromAsset(
        "assets/pdf/ProgramaSegurancaAlimentarNutricional.pdf");
    setState(() {
      _isLoading = false;
    });
  }
}
