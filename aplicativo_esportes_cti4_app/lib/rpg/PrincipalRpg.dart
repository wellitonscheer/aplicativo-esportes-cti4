import '../Global.dart' as global;
import 'package:aplicativo_esportes_cti4_app/rpg/CampoMultiCimaTexto.dart';
import 'package:flutter/material.dart';
import 'allMyWidgets.dart';

class PrincipalRpg extends StatefulWidget {
  const PrincipalRpg({Key? key}) : super(key: key);

  @override
  State<PrincipalRpg> createState() => _PrincipalRpgState();
}

class _PrincipalRpgState extends State<PrincipalRpg> {

  //Map<String, dynamic> dadosUsuario = global.monta();
  TextEditingController attForca = TextEditingController();
  TextEditingController nomePersonagem = TextEditingController(text: global.dadosUsuarioAtual["nomePersonagem"]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RPG"),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Container(
                width: 200,
                height: 200,
                child: Image.asset('assets/dedLogo.png')),
            SizedBox(height: 20),
            Text("NOME DO PERSONAGEM", style: TextStyle(fontSize: 25)),
            TextField(
              controller: nomePersonagem,
              decoration: InputDecoration(border: OutlineInputBorder()),
              onChanged: (value) {
                global.enviaFire({"nomePersonagem": value, "bbb":"bbb"});
              },
            ),
            DadosGerais(),
            Atributos(titulo: "FORÇA", idFire: "attForca"),
            Atributos(titulo: "DESTREZA", idFire: "attDestreza"),
            Atributos(titulo: "CONSTITUIÇÃO", idFire: "attConstituicao"),
            Atributos(titulo: "INTELIGÊNCIA", idFire: "attInteligencia"),
            Atributos(titulo: "SABEDORIA", idFire: "attSabedoria"),
            Atributos(titulo: "CARISMA", idFire: "attCarisma"),
            CampoTexto(texto: "PERCEPÇÃO", idFire: "percpcao",),
            CampoTexto(texto: "INSPIRAÇÃO", idFire: "inspiracao"),
            CampoTexto(texto: "BONUS DE PROFICIÊNCIA", idFire: "bonusProficiencia"),
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black12),
              ),
              child: Column(
                children: [
                  Proficiencia(profici: "Força", idFire: "resisForca"),
                  Proficiencia(profici: "Destreza", idFire: "resisDestreza"),
                  Proficiencia(profici: "Constituição", idFire: "resisConst"),
                  Proficiencia(profici: "Inteligência", idFire: "resisInteli"),
                  Proficiencia(profici: "Sabedoria", idFire: "resisSabedo"),
                  Proficiencia(profici: "Carisma", idFire: "resisCarisma"),
                  SizedBox(height: 20),
                  Text("TESTES DE RESISTÊNCIA", style: TextStyle(fontSize: 25))
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black12),
              ),
              child: Column(
                children: [
                  Proficiencia(profici: "Acrobacia (Des)", idFire: "periciaAcroba"),
                  Proficiencia(profici: "Adestrar Animais (Sab)", idFire: "periciaAdestraAnimais"),
                  Proficiencia(profici: "Arcanismo (Int)", idFire: "periciaArcanismo"),
                  Proficiencia(profici: "Atletismo (For)", idFire: "periciaAtletismo"),
                  Proficiencia(profici: "Enganação (Car)", idFire: "periciaEnganacao"),
                  Proficiencia(profici: "Furtividade (Des)", idFire: "periciaFurtividade"),
                  Proficiencia(profici: "História    (Int)", idFire: "periciaHistoria"),
                  Proficiencia(profici: "Intimidação (Car)", idFire: "periciaIntimidacao"),
                  Proficiencia(profici: "Intuição (Sab)", idFire: "periciaIntuicao"),
                  Proficiencia(profici: "Investigação (Int)", idFire: "periciaInvestigacao"),
                  Proficiencia(profici: "Medicina (Sab)", idFire: "periciaMedicina"),
                  Proficiencia(profici: "Natureza (Int)", idFire: "periciaNatureza"),
                  Proficiencia(profici: "Percepção (Sab)", idFire: "periciaPercepcao"),
                  Proficiencia(profici: "Performance (Car)", idFire: "periciaPerformace"),
                  Proficiencia(profici: "Persuasão (Car)", idFire: "periciaPersuasao"),
                  Proficiencia(profici: "Prestidigitação (Des)", idFire: "periciaPredestinacao"),
                  Proficiencia(profici: "Religião   (Int)", idFire: "periciaReligiao"),
                  Proficiencia(profici: "Sobrevivência (Sab)", idFire: "periciaSobrevivencia"),
                  SizedBox(height: 20),
                  Text("PERÍCIAS", style: TextStyle(fontSize: 25))
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: <Widget>[
                Expanded(child: TextoCimaFild(texto: "CLASSE DE ARMADURA", idFire: "classeArmadura")),
                Expanded(child: TextoCimaFild(texto: "INICIATIVA PERSOGEM", idFire: "classeIciativaPersonagem")),
                Expanded(child: TextoCimaFild(texto: "DESLOCAMENTO", idFire: "deslocamento")),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black12),
              ),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  TextoCampo(texto: "PONTOS DE VIDA MÁXIMO", idFire: "pontosVidaMaximo",),
                  FildCimaTexto("PONTOS DE VIDA ATUAL")
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black12),
              ),
              child: Column(
                children: [
                  SizedBox(height: 15),
                  FildCimaTexto("PONTOS DE VIDA TEMPORÁRIOS")
                ],
              ),
            ),
            SizedBox(height: 20),
            TextoCampoQuadrado("PC"),
            TextoCampoQuadrado("PP"),
            TextoCampoQuadrado("PE"),
            TextoCampoQuadrado("PO"),
            TextoCampoQuadrado("PP"),
            SizedBox(height: 20),
            CampoMultiCimaTexto("OUTRAS PROFICIÊNCIAS & IDIOMAS"),
            CampoMultiCimaTexto("ATAQUES & MAGIAS"),
            CampoMultiCimaTexto("EQUIPAMENTO"),
            CampoMultiCimaTexto("TRAÇOS DE PERSONALIDADE"),
            CampoMultiCimaTexto("IDEAIS"),
            CampoMultiCimaTexto("VÍNCULOS"),
            CampoMultiCimaTexto("FRAQUEZAS"),
            CampoMultiCimaTexto("CARACTERÍSTICAS E TRAÇOS")
          ],
        ),
      ),
    );
  }
}
