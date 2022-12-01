import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'allMyWidgets.dart';

class Proficiencia extends StatefulWidget {
  String profici;
  Proficiencia(this.profici);

  @override
  State<Proficiencia> createState() => _ProficienciaState();
}

class _ProficienciaState extends State<Proficiencia> {

  bool check = false;
  TextEditingController pro = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Checkbox(
              value: check,
              onChanged: (value) {
                setState(() {
                  check = value!;
                });
              },
            ),
          ),
          Expanded(
              child: TextField(
                controller: pro,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
              )
          ),
          SizedBox(width: 10),
          Expanded(
              child: Text(widget.profici, style: TextStyle(fontSize: 19))
          ),
        ],
      ),
    );
  }
}
