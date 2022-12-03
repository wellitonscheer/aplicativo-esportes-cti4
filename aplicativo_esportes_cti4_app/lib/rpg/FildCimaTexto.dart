import 'package:flutter/material.dart';
import '../Global.dart' as global;

class FildCimaTexto extends StatefulWidget {
  final String texto;
  final String idFire;

  FildCimaTexto({Key? key, required this.texto, required this.idFire})
      : super(key: key);

  @override
  State<FildCimaTexto> createState() => _FildCimaTextoState();
}

class _FildCimaTextoState extends State<FildCimaTexto> {
  var control;

  void initState() {
    // TODO: implement initState
    control = TextEditingController(text: global.dadosUsuarioAtual[widget.idFire]);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: Column(
        children: [
          TextField(
            style: TextStyle(fontSize: 24),
            controller: control,
            textAlign: TextAlign.center,
            onChanged: (value) {
              global.enviaFire({widget.idFire: value});
            },
          ),
          Text(widget.texto, style: TextStyle(fontSize: 18))
        ],
      ),
    );
    ;
  }
}
