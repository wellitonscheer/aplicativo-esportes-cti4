import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Atributos extends StatefulWidget {
  String titulo;

  Atributos(this.titulo);

  @override
  State<Atributos> createState() => _AtributosState();
}

class _AtributosState extends State<Atributos> {

  int _valor = 0;
  TextEditingController edit = TextEditingController(text: "0");
  TextEditingController modificador = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12),
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: SizedBox(
              height: 120,
              child: ElevatedButton(
                  style: ButtonStyle(
                    iconSize: MaterialStateProperty.all(40),
                    padding: MaterialStateProperty.all(EdgeInsets.all(5)),
                  ),
                  onPressed: (){
                    _valor--;
                    edit.text = '$_valor';
                  },
                  child: Icon(Icons.expand_more)
              ),
            ),
          ),
          Expanded(
              flex: 3,
            child: Container(
              child: Column(
                children: [
                  TextField(
                    textAlign: TextAlign.center,
                    readOnly: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(2))),
                      labelText: widget.titulo,
                    ),
                    controller: edit,
                    style: TextStyle(fontSize: 25),
                  ),
                  SizedBox(
                    width: 60,
                    height: 45,
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(60))),
                        //labelText: widget.titulo,
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
              height: 120,
              child: ElevatedButton(
                  style: ButtonStyle(
                      iconSize: MaterialStateProperty.all(40),
                      padding: MaterialStateProperty.all(EdgeInsets.all(5))
                  ),
                  onPressed: (){
                    _valor++;
                    edit.text = '$_valor';
                  },
                  child: Icon(Icons.expand_less)
              ),
            ),
          ),
        ],
      ),
    );
  }
}

