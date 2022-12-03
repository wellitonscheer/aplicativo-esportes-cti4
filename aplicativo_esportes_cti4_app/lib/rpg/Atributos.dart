import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../Global.dart' as global;

class Atributos extends StatefulWidget {
  final String titulo;
  final String idFire;

  Atributos({
    Key? key,
    required this.titulo,
    required this.idFire
  }) : super(key: key);

  @override
  State<Atributos> createState() => _AtributosState();
}

class _AtributosState extends State<Atributos> {

  int _valor = 0;

  var edit;
  var modificador;

  @override
  void initState() {
    // TODO: implement initState
    String modificadorTexto = "${global.dadosUsuarioAtual["${widget.idFire}2"]}";
    String editTexto = "${global.dadosUsuarioAtual["${widget.idFire}"]}";
    modificador = TextEditingController(text: modificadorTexto); //global.dadosUsuarioAtual["${widget.idFire}2"].toString()
    edit = TextEditingController(text: editTexto); // global.dadosUsuarioAtual["${widget.idFire}"].toString()
    //int valor = int.parse(global.dadosUsuarioAtual[widget.idFire]);
    //_valor + valor;
    print(global.dadosUsuarioAtual);
    //print(texto);
    super.initState();
  }

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
                    padding: MaterialStateProperty.all(EdgeInsets.all(5)), backgroundColor: MaterialStateProperty.all(Colors.black)
                  ),
                  onPressed: (){
                    _valor--;
                    edit.text = '$_valor';
                    global.enviaFire({widget.idFire: '$_valor'});
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
                    decoration: global.TextFildEstilo.copyWith(
                      labelText: widget.titulo,
                    ),
                    // decoration: InputDecoration(
                    //   border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(2))),
                    //   labelText: widget.titulo,
                    // ),
                    controller: edit,
                    style: TextStyle(fontSize: 25),
                  ),
                  SizedBox(
                    width: 60,
                    height: 45,
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: global.TextFildEstilo.copyWith(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(90)),
                      ),
                      // InputDecoration(
                      //   border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(60))),
                      //   //labelText: widget.titulo,
                      // ),
                      controller: modificador,
                      style: TextStyle(fontSize: 30),
                      onChanged: (value) {
                        global.enviaFire({"${widget.idFire}2": value});
                      },
                    ),
                  )
                ],
              ),
            )
          ),
          Expanded(
            child: SizedBox(
              height: 120,
              child:
              ElevatedButton(
                style: ButtonStyle(
                  iconSize: MaterialStateProperty.all(40),
                  padding: MaterialStateProperty.all(EdgeInsets.all(5)),
                  backgroundColor: MaterialStateProperty.all(Colors.black)
                ),
                onPressed: (){
                  _valor++;
                  edit.text = '$_valor';
                  global.enviaFire({widget.idFire: '$_valor'});
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

