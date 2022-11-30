import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DadosGerais extends StatefulWidget {
  const DadosGerais({Key? key}) : super(key: key);

  @override
  State<DadosGerais> createState() => _DadosGeraisState();
}

class _DadosGeraisState extends State<DadosGerais> {

  TextEditingController classeENivel = TextEditingController();
  TextEditingController antecedentes = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black54)
      ),
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(5),
      child: Column(
        children: [
          Text("Dados Gerais", style: TextStyle(fontSize: 20)),
          TextField(
            controller: classeENivel,
            decoration: InputDecoration(
                border: UnderlineInputBorder(),
                helperText: "Classe e Nivel",
                helperStyle: TextStyle(fontSize: 18)
            ),
          ),
          TextField(
            controller: antecedentes,
            decoration: InputDecoration(
                border: UnderlineInputBorder(),
                helperText: "Antecedentes",
                helperStyle: TextStyle(fontSize: 18)
            ),
          ),
          TextField(
            controller: classeENivel,
            decoration: InputDecoration(
                border: UnderlineInputBorder(),
                helperText: "Classe e Nivel",
                helperStyle: TextStyle(fontSize: 18)
            ),
          ),
          TextField(
            controller: classeENivel,
            decoration: InputDecoration(
                border: UnderlineInputBorder(),
                helperText: "Classe e Nivel",
                helperStyle: TextStyle(fontSize: 18)
            ),
          ),
          TextField(
            controller: classeENivel,
            decoration: InputDecoration(
                border: UnderlineInputBorder(),
                helperText: "Classe e Nivel",
                helperStyle: TextStyle(fontSize: 18)
            ),
          ),
          TextField(
            controller: classeENivel,
            decoration: InputDecoration(
                border: UnderlineInputBorder(),
                helperText: "Classe e Nivel",
                helperStyle: TextStyle(fontSize: 18)
            ),
          ),
        ],
      ),
    );
  }
}
