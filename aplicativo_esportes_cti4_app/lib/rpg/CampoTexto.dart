import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'allMyWidgets.dart';

class CampoTexto extends StatefulWidget {
  String texto;

  CampoTexto(this.texto);

  @override
  State<CampoTexto> createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {

  TextEditingController percepcao = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12),
      ),
      child: Row(
        children: <Widget>[
          Expanded(child: SizedBox(
            child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(2))),
                //labelText: widget.titulo,
              ),
              controller: percepcao,
              style: TextStyle(fontSize: 25),
            ),
          )),
          SizedBox(width: 40),
          Expanded(child:
          SizedBox(
              width: 30,
              child: Text(widget.texto, style: TextStyle(fontSize: 23))
          )
          )
        ],
      ),
    );
  }
}
