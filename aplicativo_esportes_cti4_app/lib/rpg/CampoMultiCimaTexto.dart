import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'allMyWidgets.dart';

class CampoMultiCimaTexto extends StatefulWidget {
  String texto;
  CampoMultiCimaTexto(this.texto);

  @override
  State<CampoMultiCimaTexto> createState() => _CampoMultiCimaTextoState();
}

class _CampoMultiCimaTextoState extends State<CampoMultiCimaTexto> {

  TextEditingController control = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12),
      ),
      child: Column(
        children: [
          TextField(
            maxLines: null,
            controller: control,
            textDirection: TextDirection.ltr,
          ),
          Text(widget.texto, style: TextStyle(fontSize: 19))
        ],
      ),
    );
  }
}
