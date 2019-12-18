import 'package:cae_na_rede_v2/pages/calendario/calendario_page.dart';
import 'package:cae_na_rede_v2/pages/conhecendoIFFar/pages/conhecendoIFFar_page.dart';
import 'package:cae_na_rede_v2/pages/politicas/politicas_page.dart';
import 'package:cae_na_rede_v2/pages/programas/programas_page.dart';
import 'package:cae_na_rede_v2/pages/programasDPE/programaDPE_page.dart';
import 'package:cae_na_rede_v2/pages/registros/registros_page.dart';
import 'package:cae_na_rede_v2/pages/regulamentos/regulamento_page.dart';
import 'package:cae_na_rede_v2/pages/sistemas/sistemas_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;

class DrawerList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: SizedBox(
                width: 50,
                height: 50,
                child: Image.asset('assets/images/marca_svs_l.png'),
              ),
              decoration: BoxDecoration(
                color: Colors.white54,
              ),
            ),
            _navLinks(
              context,
              "Conhecendo o IFFar",
              "Historia, Cursos e Organograma",
              ConhecendoIFFar(),
            ),
            ListTile(
              title: Text("Políticas de Assistência estudantil"),
              subtitle: Text("Regulamentos, Programas e Políticas"),
//              trailing: Icon(
//                Icons.arrow_downward,
//                color: Colors.green,
//              ),
            ),
            _navLinks(
              context,
              "Regulamentos",
              "Auxílios, moradia, convivência e concessão",
              Regulamento(),
            ),
            _navLinks(
              context,
              "Programas",
              "Nutricional, Apoio e Lazer",
              Programa(),
            ),
            _navLinks(
              context,
              "Políticas",
              "Saúde, inclusão, ações e contra violência",
              Politica(),
            ),
            _navLinks(
              context,
              "Calendário Acadêmico",
              "Calendários letivos",
              Calendario(),
            ),
            _navLinks(
              context,
              "Programa de Permanência e Êxito",
              "Quadro de ações",
              ProgramaDPE(),
            ),
            _navLinks(
              context,
              "Sistemas",
              "Biblioteca, atividades e cardápio",
              Sistema(),
            ),
            _navLinks(
              context,
              "Setor de Registros Acadêmicos",
              "Link de acesso aos documentos",
              Registros(),
            ),
          ],
        ),
      ),
    );
  }

  _navLinks(
    BuildContext context,
    String title,
    String subtitle,
    Widget route,
  ) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: Icon(
        Icons.arrow_forward,
        color: Colors.green,
      ),
      dense: true,
      onTap: () {
        prefix0.Navigator.pop(context);
        prefix0.Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) {
              return route;
            },
          ),
        );
      },
    );
  }
}
