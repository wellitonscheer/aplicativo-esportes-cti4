import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Atributos extends StatefulWidget {
  String texto;

  Atributos(this.texto);

  @override
  State<Atributos> createState() => _AtributosState();
}

class _AtributosState extends State<Atributos> {

  String titulo = "a";
  int _valor = 0;
  TextEditingController edit = TextEditingController(text: "0");

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12),
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: ElevatedButton(
              style: ButtonStyle(
                iconSize: MaterialStateProperty.all(40),
                padding: MaterialStateProperty.all(EdgeInsets.all(5))
              ),
              onPressed: (){
                _valor--;
                edit.text = '$_valor';
              },
              child: Icon(Icons.expand_more)
            ),
          ),
          Expanded(
            child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(2))),
                labelText: widget.texto,
              ),
              controller: edit,
            )
          ),
          Expanded(
            child: ElevatedButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.all(5)),
                iconSize: MaterialStateProperty.all(40)
              ),
              onPressed: (){
                _valor++;
                edit.text = '$_valor';
              },
              child: Icon(Icons.expand_less)
            ),
          ),
        ],
      ),
    );
  }
}

