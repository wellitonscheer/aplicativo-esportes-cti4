library aplicativo_esportes_cti4_app.globals;

import 'all_widgets.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:nice_buttons/nice_buttons.dart';
import 'package:firebase_auth/firebase_auth.dart';

String usuario = "";
Map<String, dynamic> dadosUsuarioAtual = {};
//var a = monta();

InputDecoration TextFildEstilo = InputDecoration(
  focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(width: 3, color: Colors.black),
      borderRadius: BorderRadius.circular(15)),
  enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 3, color: Colors.black),
      borderRadius: BorderRadius.circular(15)),
);

Future<Map<String, dynamic>> dadosUsuario() async {
  DocumentSnapshot snapshot = await FirebaseFirestore.instance
      .collection("ficha_rpg")
      .doc(FirebaseAuth.instance.currentUser!.uid)
      .get();
  Map<String, dynamic> dados = (snapshot.data() as Map<String, dynamic>);
  //var a = monta();
  return dados;
}

Map<String, dynamic> monta() {
  var dados = dadosUsuario();
  dadosUsuarioAtual = {};
  dados.then((value) {
    value.forEach((key, value) {
      dadosUsuarioAtual[key] = value;
    });
  });
  //print(dadosUsuarioAtual);
  return dadosUsuarioAtual;
}

void enviaFire(Map<String, dynamic> dados) async {
  await FirebaseFirestore.instance
      .collection("ficha_rpg")
      .doc(FirebaseAuth.instance.currentUser!.uid)
      .update(dados);
  var a = monta();
}
