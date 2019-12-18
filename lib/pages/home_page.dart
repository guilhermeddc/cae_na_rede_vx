import 'package:cae_na_rede_v2/pages/Sobre/sobre.dart';
import 'package:cae_na_rede_v2/pages/conhecendoIFFar/pages/conhecendoIFFar_page.dart';
import 'package:cae_na_rede_v2/pages/linksUteis/linksUteis.dart';
import 'package:cae_na_rede_v2/pages/politicas/politicas_page.dart';
import 'package:cae_na_rede_v2/pages/programas/programas_page.dart';
import 'package:cae_na_rede_v2/pages/programasDPE/programaDPE_page.dart';
import 'package:cae_na_rede_v2/pages/registros/registros_page.dart';
import 'package:cae_na_rede_v2/pages/regulamentos/regulamento_page.dart';
import 'package:cae_na_rede_v2/pages/sistemas/sistemas_page.dart';
import 'package:cae_na_rede_v2/widgets/drawer_list.dart';
import 'package:cae_na_rede_v2/widgets/introButton.dart';
import 'package:cae_na_rede_v2/widgets/titleScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'calendario/calendario_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    Size size = mediaQuery.size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('CAE na rede'),
      ),
      body: _body(size),
      drawer: DrawerList(),
    );
  }

  _body(Size size) {
    return ListView(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(
              right: size.width / 10,
              left: size.width / 10,
              top: size.height / 20),
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    IntroButton(
                      Colors.red,
                      Icons.assignment_turned_in,
                      "Programas",
                      100,
                      Programa(),
                    ),
                    IntroButton(
                      Colors.green,
                      Icons.account_balance,
                      "Conhecendo IFFar",
                      10,
                      ConhecendoIFFar(),
                    ),
                    IntroButton(
                      Colors.green,
                      Icons.gavel,
                      "Regulamentos",
                      10,
                      Regulamento(),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height / 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    IntroButton(
                      Colors.green,
                      Icons.poll,
                      "Políticas",
                      10,
                      Politica(),
                    ),
                    IntroButton(
                      Colors.green,
                      Icons.calendar_today,
                      "Calendário Acadêmico",
                      10,
                      Calendario(),
                    ),
                    Container(
                      height: size.height / 7.5,
                      width: size.width / 4.5,
                      color: Colors.white,
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height / 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    IntroButton(
                      Colors.green,
                      Icons.sync,
                      "Permanência e Êxito",
                      10,
                      ProgramaDPE(),
                    ),
                    IntroButton(
                      Colors.green,
                      Icons.play_arrow,
                      "Sistemas",
                      10,
                      Sistema(),
                    ),
                    IntroButton(
                      Colors.green,
                      Icons.border_color,
                      "Registro Acadêmico",
                      10,
                      Registros(),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height / 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    IntroButton(
                      Colors.green,
                      Icons.link,
                      "Links Uteis",
                      10,
                      LinksUteis(),
                    ),
                    IntroButton(
                      Colors.green,
                      Icons.language,
                      "Sobre",
                      10,
                      Sobre(),
                    ),
                    Container(
                      height: size.height / 7.5,
                      width: size.width / 4.5,
                      color: Colors.white,
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height / 50,
                ),
                TitleScreen(
                  "INSTITUTO FEDERAL Farroupilha",
                  size.width / 11.9,
                  cor: Colors.black,
                ),
                SizedBox(
                  height: size.height / 50,
                ),
                Container(
                  width: 500,
                  height: 2,
                  color: Colors.green,
                ),
                TitleScreen(
                  "Sao Vicente do Sul",
                  size.width / 11,
                  cor: Colors.black,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
