import 'package:flutter/material.dart';
import '../Global.dart' as global;

class TextoCampoQuadrado extends StatefulWidget {
  final String texto;
  final String idFire;

  TextoCampoQuadrado({Key? key, required this.texto, required this.idFire})
      : super(key: key);

  @override
  State<TextoCampoQuadrado> createState() => _TextoCampoQuadradoState();
}

class _TextoCampoQuadradoState extends State<TextoCampoQuadrado> {
  var contro;

  @override
  void initState() {
    // TODO: implement initState
    contro =
        TextEditingController(text: global.dadosUsuarioAtual[widget.idFire]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: Row(
        children: <Widget>[
          Expanded(child: Text(widget.texto, style: TextStyle(fontSize: 19))),
          Expanded(
              child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(2))),
            ),
            controller: contro,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
            onChanged: (value) {
              global.enviaFire({widget.idFire: value});
            },
          )),
          Expanded(child: Text("")),
          Expanded(child: Text("")),
        ],
      ),
    );
    ;
  }
}
