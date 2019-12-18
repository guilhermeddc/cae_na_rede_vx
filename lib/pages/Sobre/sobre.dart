import 'package:cae_na_rede_v2/widgets/titleScreen.dart';
import 'package:flutter/material.dart';
import 'package:cae_na_rede_v2/widgets/titleList.dart';
import 'package:cae_na_rede_v2/widgets/itemList.dart';

import '../../widgets/linkButton.dart';

class Sobre extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ORGANIZADORES (CRÉDITO)',
        ),
      ),
      body: ListView(
        children: <Widget>[
          TitleScreen("“CAE na rede”", 30),
          _textHistory("""     O aplicativo CAE na rede, tem como função facilitar o acesso às informações da assistência estudantil desenvolvidas no IFFar – campus São Vicente do Sul, no intuito de possibilitar a autonomia, a identificação, e o sentimento de pertencimento dos estudantes com a instituição."""),
          TitleList("Idealizadora"),
          ItemList("Jaqueline Dutra de Oliveira"),
          ItemList("Mestranda em Educação Profissional e Tecnológica"),
          ItemList("e-mail: jaqueline.oliveira@iffarroupilha.edu.br"),
          TitleList("Colaboradores"),
          ItemList("Prof. Dr. Renato Xavier Cotuinho"),
          ItemList("Orientador"),
          ItemList("e-mail: renato.coutinho@iffarroupilha.edu.br"),
          SizedBox(
            height: 20,
          ),
          ItemList("Guilherme Rodrigues Gonçalves"),
          ItemList("Desenvolvedor de aplicativos"),
          ItemList("e-mail: guilhermeddc@gmail.com"),
          SizedBox(
            height: 20,
          ),
          TitleScreen("De sua opnião sobre o Aplicativo:", 30),
          Icon(Icons.arrow_forward, color: Colors.green,),
          SizedBox(
            height: 20,
          ),
        ],
      ),
      floatingActionButton: LinkButton("https://forms.gle/czvbhu3RZYHty1Zk8"),
    );
  }

  Padding _textHistory(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            text,
            textAlign: TextAlign.justify,
            textWidthBasis: TextWidthBasis.parent,
            style: TextStyle(wordSpacing: 1.5),
          ),
        ),
      ),
    );
  }
}
