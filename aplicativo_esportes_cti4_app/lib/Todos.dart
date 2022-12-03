import 'all_widgets.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:nice_buttons/nice_buttons.dart';
import 'Global.dart' as global;

class Todos extends StatefulWidget {
  const Todos({Key? key}) : super(key: key);

  @override
  State<Todos> createState() => _TodosState();
}

class _TodosState extends State<Todos> {
  //Map<String, dynamic> dadosUsuario = global.monta();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Selecione um esporte"),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              NiceButtons(
                startColor: Colors.black,
                endColor: Colors.black12,
                borderColor: Colors.black,
                stretch: false,
                progress: false,
                gradientOrientation: GradientOrientation.Horizontal,
                onTap: (a) {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PrincipalPadel()));
                },
                child: Text(
                  'Padel',
                  //global.usuario,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              SizedBox(height: 30,),
              NiceButtons(
                startColor: Colors.black,
                endColor: Colors.black12,
                borderColor: Colors.black,
                stretch: false,
                progress: false,
                gradientOrientation: GradientOrientation.Horizontal,
                onTap: (a) {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PrincipalRpg()));
                },
                child: Text(
                  'RPG',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              SizedBox(height: 30,),
              NiceButtons(
                startColor: Colors.black,
                endColor: Colors.black12,
                borderColor: Colors.black,
                stretch: false,
                progress: false,
                gradientOrientation: GradientOrientation.Horizontal,
                onTap: (a) {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PrincipalEletronicos()));
                },
                child: Text(
                  'CS:GO',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              SizedBox(height: 30,),
              NiceButtons(
                startColor: Colors.black,
                endColor: Colors.black12,
                borderColor: Colors.black,
                stretch: false,
                progress: false,
                gradientOrientation: GradientOrientation.Horizontal,
                onTap: (a) {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PrincipalFutebol()));
                },
                child: Text(
                  'Copa do Mundo',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              SizedBox(height: 30,),
              NiceButtons(
                startColor: Colors.black,
                endColor: Colors.black12,
                borderColor: Colors.black,
                stretch: false,
                progress: false,
                gradientOrientation: GradientOrientation.Horizontal,
                onTap: (a) {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PrincipalOlimpicos()));
                },
                child: Text(
                  'Jogos Olímpicos',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              SizedBox(height: 30,),
              NiceButtons(
                startColor: Colors.black,
                endColor: Colors.black12,
                borderColor: Colors.black,
                stretch: false,
                progress: false,
                gradientOrientation: GradientOrientation.Horizontal,
                onTap: (a) {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PrincipalTabuleiro()));
                },
                child: Text(
                  'Jogos de Tabuleiro',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
