import 'package:flutter/material.dart';
import '../Global.dart' as global;

class Proficiencia extends StatefulWidget {
  final String profici;
  final String idFire;

  Proficiencia({Key? key, required this.profici, required this.idFire})
      : super(key: key);
  @override
  State<Proficiencia> createState() => _ProficienciaState();
}

class _ProficienciaState extends State<Proficiencia> {
  bool check = false;
  var pro;

  @override
  void initState() {
    // TODO: implement initState
    pro = TextEditingController(text: global.dadosUsuarioAtual[widget.idFire]);
    var checado = global.dadosUsuarioAtual["${widget.idFire}Checado"];
    if (checado != null) {
      if(checado == "false"){
        check = false;
      }
      else{
        check = true;
      }
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Checkbox(
              value: check,
              onChanged: (value) {
                setState(() {
                  check = value!;
                });
                global.enviaFire({"${widget.idFire}Checado": value.toString()});
              },
            ),
          ),
          Expanded(
              child: TextField(
            controller: pro,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
            onChanged: (value) {
              global.enviaFire({widget.idFire: value});
            },
          )),
          SizedBox(width: 10),
          Expanded(child: Text(widget.profici, style: TextStyle(fontSize: 19))),
        ],
      ),
    );
  }
}
