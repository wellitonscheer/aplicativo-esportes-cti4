import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'allMyWidgets.dart';

class TextoCampo extends StatefulWidget {
  String texto;
  TextoCampo(this.texto);

  @override
  State<TextoCampo> createState() => _TextoCampoState();
}

class _TextoCampoState extends State<TextoCampo> {

  TextEditingController contro = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: Row(
        children: <Widget>[
          Expanded(
              child: Text(widget.texto, style: TextStyle(fontSize: 19))
          ),
          Expanded(
              child: TextField(
                controller: contro,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
              )
          ),
        ],
      ),
    );
  }
}
