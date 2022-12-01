import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'allMyWidgets.dart';

class TextoCampoQuadrado extends StatefulWidget {
  String texto;
  TextoCampoQuadrado(this.texto);

  @override
  State<TextoCampoQuadrado> createState() => _TextoCampoQuadradoState();
}

class _TextoCampoQuadradoState extends State<TextoCampoQuadrado> {

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
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(2))),
              ),
              controller: contro,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            )
          ),
          Expanded(
              child: Text("")
          ),
          Expanded(
              child: Text("")
          ),
        ],
      ),
    );;
  }
}
