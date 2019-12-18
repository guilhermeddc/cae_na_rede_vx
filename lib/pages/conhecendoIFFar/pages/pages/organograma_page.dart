import 'package:cae_na_rede_v2/widgets/titleScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

class Organograma extends StatefulWidget {
  @override
  _OrganogramaState createState() => _OrganogramaState();
}

class _OrganogramaState extends State<Organograma> {
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
                    ? TitleScreen("Organograma IFFar", 30)
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
                "ORGANOGRAMA IFFar",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.book),
          onPressed: () {
            _loadFronAsstes();
          },
        ),
      ),
    );
  }

  _loadFronAsstes() async {
    setState(() {
      _isInit = false;
      _isLoading = true;
    });
    document = await PDFDocument.fromAsset("assets/pdf/Organograma.pdf");
    setState(() {
      _isLoading = false;
    });
  }
}
