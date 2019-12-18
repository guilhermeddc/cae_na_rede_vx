import 'package:cae_na_rede_v2/widgets/ImgScreen.dart';
import 'package:cae_na_rede_v2/widgets/itemList.dart';
import 'package:cae_na_rede_v2/widgets/linkButton.dart';
import 'package:cae_na_rede_v2/widgets/subTitleList.dart';
import 'package:cae_na_rede_v2/widgets/titleScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

class Saude extends StatefulWidget {
  @override
  _SaudeState createState() => _SaudeState();
}

class _SaudeState extends State<Saude> {
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
                          TitleScreen("Atenção à saúde", 30),
                          ImgScreen("saude.png"),
                          SubTitleList(
                              "Política de atenção à saúde dos discentes do IFFar:",),
                          SizedBox(height: 16.0),
                          ItemList(
                              "Incorporar e implantar ações de prevenções de doenças, promoção e recuperação da saúde;",),
                          ItemList("Prestar atendimento inicial ambulatorial;",),
                          ItemList(
                              "Articular as ações de saúde do IFFar às dos SUS;",),
                          ItemList(
                              "Fortalecer o enfrentamento das vulnerabilidades, no campo da saúde.",),
                          SizedBox(height: 16.0),
                          SubTitleList(
                              "Atendimentos com uma equipe multiprofissional:",),
                          SizedBox(height: 16.0),
                          ItemList(
                              "Profissionais da enfermagem, serviço social, medicina, nutrição, odontologia e psicologia.",),
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
                "Politica de Atenção à Saúde",
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
              heroTag: "btn1",
              child: Icon(
                Icons.book,
              ),
              onPressed: () {
                _loadFronAssets();
              },
            ),
          ],
        ),
      ),
    );
  }

  _loadFronAssets() async {
    setState(() {
      _isInit = false;
      _isLoading = true;
    });
    document = await PDFDocument.fromAsset(
        "assets/pdf/PoliticaAtencaoSaudeDiscentes.pdf");
    setState(() {
      _isLoading = false;
    });
  }
}
