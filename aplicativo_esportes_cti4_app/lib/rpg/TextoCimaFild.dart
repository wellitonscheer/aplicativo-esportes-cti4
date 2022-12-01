import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'allMyWidgets.dart';

class TextoCimaFild extends StatefulWidget {
  String texto;
  TextoCimaFild(this.texto);

  @override
  State<TextoCimaFild> createState() => _TextoCimaFildState();
}

class _TextoCimaFildState extends State<TextoCimaFild> {

  TextEditingController control = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12),
      ),
      margin: EdgeInsets.all(5),
      child: Column(
        children: [
          Text(widget.texto),
          TextField(
            style: TextStyle(fontSize: 17),
            controller: control,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
