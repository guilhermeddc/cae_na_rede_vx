import 'package:cae_na_rede_v2/widgets/ImgScreen.dart';
import 'package:cae_na_rede_v2/widgets/itemList.dart';
import 'package:cae_na_rede_v2/widgets/linkButton.dart';
import 'package:cae_na_rede_v2/widgets/subTitleList.dart';
import 'package:cae_na_rede_v2/widgets/titleList.dart';
import 'package:cae_na_rede_v2/widgets/titleScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

class Acoes extends StatefulWidget {
  @override
  _AcoesState createState() => _AcoesState();
}

class _AcoesState extends State<Acoes> {
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
                          TitleScreen("Ações afirmativas", 30),
                          ImgScreen("acoes.png"),
                          SizedBox(height: 16.0),
                          TitleList("Política de ações afirmativas"),
                          SizedBox(height: 16.0),
                          SubTitleList(
                              "Constitui-se em um instrumento de promoção:"),
                          ItemList("Dos valores democráticos;"),
                          ItemList(
                              "De respeito à diferença e à diversidade socioeconômica, étnico-racial e das condições das pessoas com deficiência, mediante a ampliação do acesso aos cursos;"),
                          ItemList(
                              "Do acompanhamento do percurso formativo na instituição, com a adoção de medidas que estimulem a permanência nos cursos."),
                          SizedBox(height: 20.0),
                        ],
                      )
                    : _isLoading
                        ? Center(
                            child: CircularProgressIndicator(),
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
                "POLÍTICA DE AÇÕES AFIRMATIVAS",
                style: TextStyle(color: Colors.white, fontSize: 15,),
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
              heroTag: "btn1",
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
        "assets/pdf/PoliticaAcoesAfirmativasiFFar.pdf");
    setState(() {
      _isLoading = false;
    });
  }
}
