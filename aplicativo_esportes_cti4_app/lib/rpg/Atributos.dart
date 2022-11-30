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
  TextEditingController modificador = TextEditingController();

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
            child: Container(
              child: Column(
                children: [
                  TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(2))),
                      labelText: widget.texto,
                    ),
                    controller: edit,
                    style: TextStyle(fontSize: 30),
                  ),
                  SizedBox(
                    width: 50,
                    height: 35,
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(2))),
                        labelText: widget.texto,
                      ),
                      controller: modificador,
                      style: TextStyle(fontSize: 30),
                    ),
                  )
                ],
              ),
            )
          ),
          Expanded(
            child: SizedBox(
              height: 100,
              width: 10,
              child: ElevatedButton(
                  style: ButtonStyle(
                      //padding: MaterialStateProperty.all(EdgeInsets.all(5)),
                      iconSize: MaterialStateProperty.all(40),

                  ),
                  onPressed: (){
                    _valor++;
                    edit.text = '$_valor';
                  },
                  child: Icon(Icons.expand_less)
              ),
            )
          ),
        ],
      ),
    );
  }
}

