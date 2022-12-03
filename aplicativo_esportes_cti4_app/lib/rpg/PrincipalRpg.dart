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

  TextEditingController attForca = TextEditingController();
  TextEditingController nomePersonagem = TextEditingController();
  Map<String, dynamic> dadosUsuario = global.monta();

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
                global.enviaFire({"nomePersonagem": nomePersonagem.text});
              },
            ),
            DadosGerais(),
            Atributos(titulo: "FORÇA", idFire: "attForca"),
            Atributos(titulo: "DESTREZA", idFire: "attForca"),
            Atributos(titulo: "CONSTITUIÇÃO", idFire: "attForca"),
            Atributos(titulo: "INTELIGÊNCIA", idFire: "attForca"),
            Atributos(titulo: "SABEDORIA", idFire: "attForca"),
            Atributos(titulo: "CARISMA", idFire: "attForca"),
            CampoTexto("PERCEPÇÃO"),
            CampoTexto("INSPIRAÇÃO"),
            CampoTexto("BONUS DE PROFICIÊNCIA"),
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black12),
              ),
              child: Column(
                children: [
                  Proficiencia("Força"),
                  Proficiencia("Destreza"),
                  Proficiencia("Constituição"),
                  Proficiencia("Inteligência"),
                  Proficiencia("Sabedoria"),
                  Proficiencia("Carisma"),
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
                  Proficiencia("Acrobacia (Des)"),
                  Proficiencia("Adestrar Animais (Sab)"),
                  Proficiencia("Arcanismo (Int)"),
                  Proficiencia("Atletismo (For)"),
                  Proficiencia("Enganação (Car)"),
                  Proficiencia("Furtividade (Des)"),
                  Proficiencia("História    (Int)"),
                  Proficiencia("Intimidação (Car)"),
                  Proficiencia("Intuição (Sab)"),
                  Proficiencia("Investigação (Int)"),
                  Proficiencia("Medicina (Sab)"),
                  Proficiencia("Natureza (Int)"),
                  Proficiencia("Percepção (Sab)"),
                  Proficiencia("Performance (Car)"),
                  Proficiencia("Persuasão (Car)"),
                  Proficiencia("Prestidigitação (Des)"),
                  Proficiencia("Religião   (Int)"),
                  Proficiencia("Sobrevivência (Sab)"),
                  SizedBox(height: 20),
                  Text("PERÍCIAS", style: TextStyle(fontSize: 25))
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: <Widget>[
                Expanded(child: TextoCimaFild("CLASSE DE ARMADURA")),
                Expanded(child: TextoCimaFild("INICIATIVA PERSOGEM")),
                Expanded(child: TextoCimaFild("DESLOCAMENTO")),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black12),
              ),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  TextoCampo("PONTOS DE VIDA MÁXIMO"),
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
