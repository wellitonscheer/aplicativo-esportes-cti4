import 'package:flutter/material.dart';
import '../Global.dart' as global;

class DadosGerais extends StatefulWidget {
  const DadosGerais({Key? key}) : super(key: key);

  @override
  State<DadosGerais> createState() => _DadosGeraisState();
}

class _DadosGeraisState extends State<DadosGerais> {
  // Map<String, dynamic> dadosUsuario = global.monta();
  TextEditingController classeENivel =
      TextEditingController(text: global.dadosUsuarioAtual["classeENivel"]);
  TextEditingController antecedentes =
      TextEditingController(text: global.dadosUsuarioAtual["antecedentes"]);
  TextEditingController nomeJogador =
      TextEditingController(text: global.dadosUsuarioAtual["nomeJogador"]);
  TextEditingController raca =
      TextEditingController(text: global.dadosUsuarioAtual["raca"]);
  TextEditingController tendencia =
      TextEditingController(text: global.dadosUsuarioAtual["tendencia"]);
  TextEditingController experiencia =
      TextEditingController(text: global.dadosUsuarioAtual["experiencia"]);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.black54)),
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(5),
      child: Column(
        children: [
          Text("Dados Gerais", style: TextStyle(fontSize: 20)),
          TextField(
            controller: classeENivel,
            decoration: InputDecoration(
                border: UnderlineInputBorder(),
                helperText: "CLASSE & NÍVEL",
                helperStyle: TextStyle(fontSize: 18)),
            onChanged: (value) {
              global.enviaFire({"classeENivel": value});
            },
          ),
          TextField(
            controller: antecedentes,
            decoration: InputDecoration(
                border: UnderlineInputBorder(),
                helperText: "ANTECEDENTES",
                helperStyle: TextStyle(fontSize: 18)),
            onChanged: (value) {
              global.enviaFire({"antecedentes": value});
            },
          ),
          TextField(
            controller: nomeJogador,
            decoration: InputDecoration(
                border: UnderlineInputBorder(),
                helperText: "NOME DO JOGADOR",
                helperStyle: TextStyle(fontSize: 18)),
            onChanged: (value) {
              global.enviaFire({"nomeJogador": value});
            },
          ),
          TextField(
            controller: raca,
            decoration: InputDecoration(
                border: UnderlineInputBorder(),
                helperText: "RAÇA",
                helperStyle: TextStyle(fontSize: 18)),
            onChanged: (value) {
              global.enviaFire({"raca": value});
            },
          ),
          TextField(
            controller: tendencia,
            decoration: InputDecoration(
                border: UnderlineInputBorder(),
                helperText: "TENDÊNCIA",
                helperStyle: TextStyle(fontSize: 18)),
            onChanged: (value) {
              global.enviaFire({"tendencia": value});
            },
          ),
          TextField(
            controller: experiencia,
            decoration: InputDecoration(
                border: UnderlineInputBorder(),
                helperText: "EXPERIÊNCIA",
                helperStyle: TextStyle(fontSize: 18)),
            onChanged: (value) {
              global.enviaFire({"experiencia": value});
            },
          ),
        ],
      ),
    );
  }
}
