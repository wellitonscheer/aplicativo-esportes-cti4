import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'allMyWidgets.dart';

class PrincipalRpg extends StatefulWidget {
  const PrincipalRpg({Key? key}) : super(key: key);

  @override
  State<PrincipalRpg> createState() => _PrincipalRpgState();
}

class _PrincipalRpgState extends State<PrincipalRpg> {

  TextEditingController attForca = TextEditingController();
  TextEditingController nomePersonagem = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RPG"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Text("Nome do Personagem", style: TextStyle(fontSize: 25)),
            TextField(
              controller: nomePersonagem,
              decoration: InputDecoration(
                border: OutlineInputBorder()
              )
            ),
            DadosGerais(),
            Atributos("forca"),
            Atributos("destreza"),
            Atributos("constituicao")
          ],
        ),
      ),
    );
  }
}
