import 'package:flutter/material.dart';
import '../Global.dart' as global;

class CampoTexto extends StatefulWidget {

  final String texto;
  final String idFire;

  CampoTexto({
    Key? key,
    required this.texto,
    required this.idFire
  }) : super(key: key);

  @override
  State<CampoTexto> createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {

  var percepcao;

  @override
  void initState() {
    // TODO: implement initState
    percepcao = TextEditingController(text: global.dadosUsuarioAtual[widget.idFire]);
    super.initState();
  }

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
              onChanged: (value) {
                global.enviaFire({widget.idFire: value});
              },
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
