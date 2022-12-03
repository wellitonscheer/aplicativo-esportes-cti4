import 'package:flutter/material.dart';
import '../Global.dart' as global;

class CampoMultiCimaTexto extends StatefulWidget {
  final String texto;
  final String idFire;

  CampoMultiCimaTexto({Key? key, required this.texto, required this.idFire})
      : super(key: key);

  @override
  State<CampoMultiCimaTexto> createState() => _CampoMultiCimaTextoState();
}

class _CampoMultiCimaTextoState extends State<CampoMultiCimaTexto> {
  var control;

  @override
  void initState() {
    // TODO: implement initState
    control = TextEditingController(text: global.dadosUsuarioAtual[widget.idFire]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12),
      ),
      child: Column(
        children: [
          TextField(
            maxLines: null,
            controller: control,
            textDirection: TextDirection.ltr,
            onChanged: (value) {
              global.enviaFire({widget.idFire: value});
            },
          ),
          Text(widget.texto, style: TextStyle(fontSize: 19))
        ],
      ),
    );
  }
}
