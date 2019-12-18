import 'package:cae_na_rede_v2/widgets/ImgScreen.dart';
import 'package:cae_na_rede_v2/widgets/linkButton.dart';
import 'package:cae_na_rede_v2/widgets/titleList.dart';
import 'package:cae_na_rede_v2/widgets/titleScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

class Concessao extends StatefulWidget {
  @override
  _ConcessaoState createState() => _ConcessaoState();
}

class _ConcessaoState extends State<Concessao> {
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
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 12,
                    left: 8,
                    right: 8,
                  ),
                  child: _isInit
                      ? ListView(
                          children: <Widget>[
                            TitleScreen(
                                "Concessão de apoio financeiro aos estudantes do IFFar para participacão de eventos",
                                22.0),
                            ImgScreen("concessao.jpg"),
                            TitleList(
                                "       Subsidiar a participação em eventos de natureza científica e/ou tecnológica, desportiva, artístico-cultural e de organização estudantil."),
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
        "assets/pdf/RegulamentoApoioFinanceiroParticipacaoDiscentesEventos.pdf");
    setState(() {
      _isLoading = false;
    });
  }
}
