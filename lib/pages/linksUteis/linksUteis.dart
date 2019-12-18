import 'package:cae_na_rede_v2/widgets/ListLink.dart';
import 'package:cae_na_rede_v2/widgets/titleList.dart';
import 'package:cae_na_rede_v2/widgets/titleScreen.dart';
import 'package:flutter/material.dart';

class LinksUteis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Links Uteis"),
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            TitleScreen("EDITAIS DA ASSISTÊNCIA ESTUDANTIL", 30),
            TitleList("AUXÍLIOS DA ASSISTÊNCIA ESTUDANTIL"),
            ListLink(
              "https://www.iffarroupilha.edu.br/editais-sao-vicente-do-sul/item/12390-edital-de-concess%C3%A3o-de-aux%C3%ADlios-perman%C3%AAncia-e-transporte-para-estudantes-2019-1",
              "Edital 021 2019 - Concessão de Auxílios Permanência e Transporte para Estudantes - 2019/1",
            ),
            ListLink(
              "https://www.iffarroupilha.edu.br/editais-sao-vicente-do-sul/item/12422-retifica%C3%A7%C3%A3o-ao-edital-n%C2%BA-021-2019-sele%C3%A7%C3%A3o-de-estudantes-para-a-concess%C3%A3o-de-aux%C3%ADlios-da-assist%C3%AAncia-estudantil-do-iffar-2019-i",
              "Retificação ao Edital nº 021/2019 - Seleção de estudantes para a concessão de auxílios da Assistência Estudantil do IFFar 2019/I",
            ),
            ListLink(
              "https://www.iffarroupilha.edu.br/editais-sao-vicente-do-sul/item/12751-lista-de-inscritos-referente-ao-edital-n%C2%BA-021-2019-aux%C3%ADlios-assist%C3%AAncia-estudantil-2019-1",
              "Lista de inscritos referente ao Edital nº 021/2019 - Auxílios Assistência Estudantil 2019/1",
            ),
            ListLink(
              "https://www.iffarroupilha.edu.br/editais-sao-vicente-do-sul/item/13295-resultado-preliminar-referente-ao-edital-n%C2%BA-0212019-%E2%80%93-aux%C3%ADlios-da-assist%C3%AAncia-estudantil-%E2%80%93-perman%C3%AAncia-e-transporte",
              "Resultado Preliminar referente ao Edital nº 021/2019 – Auxílios da Assistência Estudantil – Permanência e Transporte",
            ),
            ListLink(
              "https://www.iffarroupilha.edu.br/editais-sao-vicente-do-sul/item/13368-resultado-final-referente-ao-edital-n%C2%BA-021-2019-%E2%80%93-aux%C3%ADlios-da-assist%C3%AAncia-estudantil-%E2%80%93-perman%C3%AAncia-e-transporte",
              "Resultado Final referente ao Edital nº 021/2019 – Auxílios da Assistência Estudantil – Permanência e Transporte",
            ),
            ListLink(
              "https://www.iffarroupilha.edu.br/editais-sao-vicente-do-sul/item/13467-1%C2%AA-chamada-referente-ao-edital-n%C2%BA-021-2019-%E2%80%93-aux%C3%ADlios-da-assist%C3%AAncia-estudantil-%E2%80%93-perman%C3%AAncia-e-transporte",
              "1ª Chamada referente ao Edital nº 021/2019 – Auxílios da Assistência Estudantil – Permanência e Transporte",
            ),
            ListLink(
              "https://www.iffarroupilha.edu.br/editais-sao-vicente-do-sul/item/13901-edital-n%C2%BA-053-2019-aux%C3%ADlios-assist%C3%AAncia-estudantil-2019-2%C2%AA-chamada",
              "2 ª Chamada referente ao Edital nº 021/2019 - Edital nº 053 2019 - Auxílios Assistência Estudantil 2019",
            ),
            ListLink(
              "https://www.iffarroupilha.edu.br/editais-sao-vicente-do-sul/item/14005-retifica%C3%A7%C3%A3o-do-edital-n%C2%BA-053-2019-aux%C3%ADlios-assist%C3%AAncia-estudantil-2019-2%C2%AA-chamada",
              "Retificação do Edital nº 053 2019 - Auxílios Assistência Estudantil 2019/2ª Chamada",
            ),
            ListLink(
              "https://www.iffarroupilha.edu.br/editais-sao-vicente-do-sul/item/15160-edital-n%C2%BA-078-2019-aux%C3%ADlios-da-assist%C3%AAncia-estudantil-3%C2%AA-chamada",
              "3ª Chamada referente ao Edital nº 021/2019 - Edital nº 078/2019 - Auxílios da Assistência Estudantil",
            ),
            TitleList("AUXÍLIO ATLETA"),
            ListLink(
              "https://www.iffarroupilha.edu.br/editais-sao-vicente-do-sul/item/13525-edital-n%C2%BA-043-2019-sele%C3%A7%C3%A3o-aux%C3%ADlio-estudante-atleta",
              "Edital nº 043 2019 - Seleção Auxílio Estudante Atleta",
            ),
            ListLink(
              "https://www.iffarroupilha.edu.br/editais-sao-vicente-do-sul/item/13631-lista-de-inscritos-referente-ao-edital-n%C2%BA-043-2019-aux%C3%ADlio-estudante-atleta",
              "Lista de inscritos referente ao Edital nº 043/2019 - Auxílio Estudante Atleta",
            ),
            ListLink(
              "https://www.iffarroupilha.edu.br/editais-sao-vicente-do-sul/item/13788-edital-n%C2%BA-049-2019-resultado-final-aux%C3%ADlio-estudante-atleta",
              "Edital nº 049 2019 - Resultado Final Auxílio Estudante Atleta",
            ),
            TitleList("BOLSA DE ATIVIDADES DE APOIO EDUCACIONAL"),
            ListLink(
              "https://www.iffarroupilha.edu.br/editais-sao-vicente-do-sul/item/14631-edital-n%C2%BA-067-2019-sele%C3%A7%C3%A3o-de-alunos-para-bolsas-de-atividades-de-apoio-educacional",
              "Edital nº 067/2019 - Seleção de alunos para bolsas de atividades de Apoio Educacional",
            ),
            ListLink(
              "https://www.iffarroupilha.edu.br/editais-sao-vicente-do-sul/item/14748-retifica%C3%A7%C3%A3o-do-edital-n%C2%BA-067-2019-sele%C3%A7%C3%A3o-de-alunos-para-bolsas-de-atividades-de-apoio-educacional",
              "Retificação do Edital nº 067/2019 - Seleção de alunos para bolsas de atividades de Apoio Educacional",
            ),
            ListLink(
              "https://www.iffarroupilha.edu.br/editais-sao-vicente-do-sul/item/14941-resultado-preliminar-referente-ao-edital-n%C2%BA-067-2019-bolsa-de-atividades-de-apoio-educacional",
              "Resultado Preliminar referente ao Edital nº 067/2019 - Bolsa de Atividades de Apoio Educacional",
            ),
            ListLink(
              "https://www.iffarroupilha.edu.br/editais-sao-vicente-do-sul/item/14974-resultado-dos-recursos-e-resultado-final-referente-ao-edital-n%C2%BA-067-2019-bolsa-de-atividades-de-apoio-educacional",
              "Resultado dos recursos e resultado final referente ao Edital nº 067/2019 - Bolsa de Atividades de Apoio Educacional",
            ),
            TitleList("MORADIA ESTUDANTIL"),
            ListLink(
              "https://www.iffarroupilha.edu.br/editais-sao-vicente-do-sul/item/14326-edital-062-2019-sele%C3%A7%C3%A3o-para-moradia-estudantil-do-if-farroupilha-2%C2%BA-semestre-2019",
              "Edital 062/2019 - Seleção para Moradia Estudantil do IF Farroupilha - 2º Semestre/2019",
            ),
            ListLink(
              "https://www.iffarroupilha.edu.br/editais-sao-vicente-do-sul/item/14539-lista-de-inscritos-referente-ao-edital-n%C2%BA-062-2019-moradia-estudantil-2019-2",
              "Lista de Inscritos referente ao Edital nº 062/2019 - Moradia Estudantil 2019-2",
            ),
            ListLink(
              "https://www.iffarroupilha.edu.br/editais-sao-vicente-do-sul/item/14738-resultado-final-referente-ao-edital-n%C2%BA-062-2019-moradia-estudantil-2019-2",
              "Resultado final referente ao Edital nº 062/2019 - Moradia Estudantil 2019-2",
            ),
            ListLink(
              "https://www.iffarroupilha.edu.br/editais-sao-vicente-do-sul/item/13196-retifica%C3%A7%C3%A3o-ao-edital-n%C2%BA-032-2019-sele%C3%A7%C3%A3o-moradia-estudantil-vagas-masculinas",
              "Retificação ao Edital nº 032 2019 - Seleção Moradia Estudantil - Vagas Masculinas",
            ),
            ListLink(
              "https://www.iffarroupilha.edu.br/editais-sao-vicente-do-sul/item/13109-edital-n%C2%BA-032-2019-sele%C3%A7%C3%A3o-para-moradia-estudantil-masculino",
              "Edital nº 032 2019 - Seleção para Moradia Estudantil – Masculino",
            ),
            ListLink(
              "https://www.iffarroupilha.edu.br/editais-sao-vicente-do-sul/item/13213-lista-de-inscritos-referente-ao-edital-n%C2%BA-032-2019-moradia-estudantil-2019-1-vagas-masculinas",
              "Lista de Inscritos referente ao Edital nº 032/2019 - Moradia Estudantil 2019/1 - Vagas Masculinas",
            ),
            ListLink(
              "https://www.iffarroupilha.edu.br/editais-sao-vicente-do-sul/item/13390-resultado-preliminar-referente-ao-edital-n%C2%BA-032-2019-%E2%80%93-sele%C3%A7%C3%A3o-para-moradia-estudantil-masculina",
              "Resultado Preliminar referente ao Edital nº 032/2019 – Seleção para Moradia Estudantil Masculina",
            ),
            ListLink(
              "https://www.iffarroupilha.edu.br/editais-sao-vicente-do-sul/item/13438-resultado-dos-recursos-e-resultado-final-referente-ao-edital-n%C2%BA-032-2019-%E2%80%93-sele%C3%A7%C3%A3o-para-moradia-estudantil-masculina",
              "Resultado dos Recursos e Resultado Final referente ao Edital nº 032/2019 – Seleção para Moradia Estudantil Masculina",
            ),
            ListLink(
              "https://www.iffarroupilha.edu.br/editais-sao-vicente-do-sul/item/11136-edital-n%C2%BA-068-2018-sele%C3%A7%C3%A3o-para-moradia-estudantil-cursos-integrados-2019-1",
              "Edital nº 068/2018 - Seleção para Moradia Estudantil/Cursos Integrados 2019/1",
            ),
            ListLink(
              "https://www.iffarroupilha.edu.br/editais-sao-vicente-do-sul/item/11825-retifica%C3%A7%C3%A3o-do-edital-068-2018-sele%C3%A7%C3%A3o-para-moradia-estudantil-2019-1-cursos-integrados",
              "Retificação do Edital 068/2018 - Seleção para Moradia Estudantil 2019/1 - Cursos Integrados",
            ),
            ListLink(
              "https://www.iffarroupilha.edu.br/editais-sao-vicente-do-sul/item/11804-resultado-preliminar-referente-ao-edital-n%C2%BA-068-2018-sele%C3%A7%C3%A3o-para-moradia-estudantil-cursos-integrados-2019-1",
              "Edital 002/2019 - Resultado Preliminar referente ao Edital nº 068/2018 - Seleção para Moradia Estudantil/Cursos Integrados 2019/1",
            ),
            ListLink(
              "https://www.iffarroupilha.edu.br/editais-sao-vicente-do-sul/item/11687-lista-de-inscritos-referente-ao-edital-n%C2%BA-068-2018-sele%C3%A7%C3%A3o-para-moradia-estudantil-cursos-integrados-2019-1",
              "Lista de Inscritos - Referente ao Edital nº 068/2018 - Seleção para Moradia Estudantil/Cursos Integrados 2019/1",
            ),
            ListLink(
              "https://www.iffarroupilha.edu.br/editais-sao-vicente-do-sul/item/11857-edital-006-2019-resultado-dos-recursos-e-resultado-final-da-sele%C3%A7%C3%A3o-para-moradia-estudantil-para-estudantes-dos-cursos-integrados",
              "Edital 006/2019 - Resultado dos recursos e resultado final da seleção para moradia estudantil para estudantes dos cursos integrados",
            ),
          ],
        ),
      ),
    );
  }
}
