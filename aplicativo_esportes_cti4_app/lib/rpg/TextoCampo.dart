import 'package:flutter/material.dart';
import '../Global.dart' as global;

class TextoCampo extends StatefulWidget {
  final String texto;
  final String idFire;

  TextoCampo({Key? key, required this.texto, required this.idFire})
      : super(key: key);

  @override
  State<TextoCampo> createState() => _TextoCampoState();
}

class _TextoCampoState extends State<TextoCampo> {
  var contro;

  @override
  void initState() {
    // TODO: implement initState
    contro = TextEditingController(text: global.dadosUsuarioAtual[widget.idFire]);

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
            controller: contro,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
                onChanged: (value) {
                  global.enviaFire({widget.idFire: value});
                },
          )),
        ],
      ),
    );
  }
}
