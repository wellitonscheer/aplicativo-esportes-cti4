import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'allMyWidgets.dart';

class FildCimaTexto extends StatefulWidget {
  String texto;
  FildCimaTexto(this.texto);

  @override
  State<FildCimaTexto> createState() => _FildCimaTextoState();
}

class _FildCimaTextoState extends State<FildCimaTexto> {

  TextEditingController control = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: Column(
        children: [
          TextField(
            style: TextStyle(fontSize: 24),
            controller: control,
            textAlign: TextAlign.center,
          ),
          Text(widget.texto, style: TextStyle(fontSize: 18))
        ],
      ),
    );;
  }
}
