import 'package:flutter/material.dart';
import '../Global.dart' as global;

class TextoCimaFild extends StatefulWidget {
  final String texto;
  final String idFire;

  TextoCimaFild({Key? key, required this.texto, required this.idFire})
      : super(key: key);

  @override
  State<TextoCimaFild> createState() => _TextoCimaFildState();
}

class _TextoCimaFildState extends State<TextoCimaFild> {
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
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12),
      ),
      margin: EdgeInsets.all(5),
      child: Column(
        children: [
          Text(widget.texto),
          TextField(
            onChanged: (value) {
              global.enviaFire({widget.idFire: value});
            },
            style: TextStyle(fontSize: 17),
            controller: control,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
