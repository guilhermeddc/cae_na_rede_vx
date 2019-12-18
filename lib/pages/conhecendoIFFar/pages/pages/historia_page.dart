import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Historia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var paragrafo01 = '''
    O Campus São Vicente do Sul do Instituto Federal Farroupilha, com sede no município de São Vicente do Sul, RS, foi criado em 17 de novembro de 1954, através de Termo de Acordo firmado entre a União e o então município de General Vargas, sob a denominação de Escola de Iniciação Agrícola, publicado no Diário Oficial de 30/11/1954, em conformidade com os Artigos 2º e 4º do Decreto Federal nº 22.470, de 20 e janeiro de 1947, que instalou o Ensino Agrícola no Brasil, e os dispositivos do Decreto Lei 9.613, de 20 de agosto de 1946.''';

    var paragrafo02 = '''
    Em 25 de janeiro de 1968, pelo Decreto no 62.178, foi transferido para a Universidade Federal de Santa Maria, sob denominação de Colégio Agrícola. No ano seguinte, pelo Decreto nº 64.827, de 16 de julho de 1969, houve uma reformulação do Decreto nº 62.178, estabelecendo que a orientação didático-pedagógica seria totalmente exercida pela UFSM.''';

    var paragrafo03 = '''
    Em 28 de fevereiro de 1985, através do Decreto no 91.005, a instituição passou a pertencer a COAGRI - Coordenação de Ensino Agrícola, com a denominação de Escola Agrotécnica Federal de São Vicente do Sul. Após, através do Decreto n° 93.313, de 21 de novembro de 1986, foi extinta a COAGRI, sendo criada, em substituição, a Secretaria de Ensino de 2° Grau - SESG, órgão diretamente ligado ao Ministério da Educação.''';

    var paragrafo04 = '''
    Em 1990, houve nova reorganização no funcionamento dos órgãos da Presidência da República e dos Ministérios. O Decreto n° 99.180 criou a Secretaria de Educação Média e Tecnológica, ficando, então, todas as Escolas Agrotécnicas Federais a ela subordinadas.''';

    var paragrafo05 = '''
    A Lei 8.731, de 16 de novembro de 1993, transformou as Escolas Agrotécnicas Federais em Autarquias Federais, dando-lhes autonomia administrativa, patrimonial, financeira e disciplinar. Em 15 de abril de 1998, o Decreto n° 2.548, de 15 de abril de 1998, aprovou o novo Regimento Geral das Escolas Agrotécnicas Federais, determinando que cada uma elaborasse sua própria regulamentação. O Regulamento Interno da Instituição foi elaborado e submetido à aprovação dos órgãos superiores,tendo sido aprovada no dia 1º/09/98, através da Portaria/MEC 966.''';

    var paragrafo06 = '''
    Em 13 de novembro de 2002, através de Decreto Presidencial de 13 de novembro, publicado no Diário Oficial - Nº 221 - Seção 1, quinta-feira, 14 de novembro de 2002, a Escola Agrotécnica foi credenciada como Centro Federal de Educação Tecnológica, passando à denominação de Centro Federal de Educação Tecnológica de São Vicente do Sul.''';

    var paragrafo07 = '''
    Em 2006, o Decreto nº 5.773, de 09/05/2006, revogou o Decreto no 3.860, de 9 de julho de 2001 e o Decreto nº 5.225, de 1º/10/2004 e elevou, efinitivamente, os CEFET à condição de Instituições de Ensino Superior.''';

    var paragrafo08 = '''
    Em 2008, a Lei nº 11.892, de 29 de dezembro de 2008, publicada no Diário Oficial da União de 30 subsequente criou os Institutos Federais de Educação Ciência e Tecnologia e a Portaria MEC n° 4, de 06 de janeiro de 2009, publicada no Diário Oficial de União de 07 subsequente, estabeleceu a relação dos campi componentes do Instituto Farroupilha, onde foi inserido o Campus São Vicente do Sul - RS.''';

    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            Container(
              height: 75,
              child: Center(
                child: Text(
                  "História do IFFar",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            _textHistory(paragrafo01),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Container(
                height: 300,
                child: PageView(
                  children: <Widget>[
                    _card("assets/images/1.png", "Escola de Iniciação Agrícola - 1954"),
                    _card("assets/images/2.png", "Colégio Agrícola - 1968"),
                    _card("assets/images/4.png", "Escola Agrotécnica  Federal de São Vicente do Sul - 1985"),
                    _card("assets/images/3.png", "IFFar - 2009"),
                  ],
                ),
              ),
            ),
            _textHistory(paragrafo02),
            _textHistory(paragrafo03),
            _textHistory(paragrafo04),
            _textHistory(paragrafo05),
            _textHistory(paragrafo06),
            _textHistory(paragrafo07),
            _textHistory(paragrafo08),
          ],
        ),
      ),
    );
  }

  Padding _textHistory(String text) {
    return Padding(
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(text,
                textAlign: TextAlign.justify,
                textWidthBasis: TextWidthBasis.parent,
                style: TextStyle(wordSpacing: 1.5),
              ),
            ),
          ),
        );
  }

  _card(String img, String text) {
    return Card(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Image.asset(img, fit: BoxFit.cover,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(text),
          )
        ],
      ),
    );
  }

}
