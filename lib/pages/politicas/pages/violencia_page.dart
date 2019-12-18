import 'package:cae_na_rede_v2/widgets/ImgScreen.dart';
import 'package:cae_na_rede_v2/widgets/itemList.dart';
import 'package:cae_na_rede_v2/widgets/linkButton.dart';
import 'package:cae_na_rede_v2/widgets/titleList.dart';
import 'package:cae_na_rede_v2/widgets/titleScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

class Violencia extends StatefulWidget {
  @override
  _ViolenciaState createState() => _ViolenciaState();
}

class _ViolenciaState extends State<Violencia> {
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
                          TitleScreen("Política de não violência", 30),
                          ImgScreen("paz.png"),
                          TitleList("Política de não violência"),
                          ItemList(
                              "Estabelecer conceitos, princípios, diretrizes e ações institucionais de sensibilização para a não violência;"),
                          ItemList(
                              "Incentivar a sensibilização, a problematização e a produção de novas formas de abordar as relações humanas, pautadas numa cultura de paz e diálogo compassivo;"),
                          ItemList(
                              "Prevenir, por meio da mediação de conflitos, a abertura de processos disciplinares no âmbito institucional;"),
                          ItemList(
                              "Incentivar a condução dos processos por meio de diretrizes não violentas e de responsabilização educativa."),
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
                "POLÍTICA DE NÃO VIOLÊNCIA",
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
              child: Icon(
                Icons.book,
              ),
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
    document =
        await PDFDocument.fromAsset("assets/pdf/PoliticaNaoViolencia.pdf");
    setState(() {
      _isLoading = false;
    });
  }
}
