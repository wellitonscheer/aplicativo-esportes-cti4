import 'all_widgets.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class Cadastro extends StatefulWidget{
  const Cadastro({Key? key}) : super(key: key);

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {

  TextEditingController usuario = TextEditingController();
  TextEditingController nomeUsuario = TextEditingController();
  TextEditingController emailUsuario = TextEditingController();
  TextEditingController senhaUsuario = TextEditingController();

  void _cadastroUsuario() async{
    var montaTexto = {"usuario":usuario.text, "nomeUsuario":nomeUsuario.text, "emailUsuario":emailUsuario.text, "senhaUsuario":senhaUsuario.text};
    FirebaseFirestore.instance.collection("usuarios").doc(nomeUsuario.text).set(montaTexto);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro"),
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
                labelText: "Usuario"
            ),
            controller: usuario,
          ),
          TextField(
            decoration: InputDecoration(
                labelText: "Nome"
            ),
            controller: nomeUsuario,
          ),
          TextField(
            decoration: InputDecoration(
                labelText: "Email"
            ),
            controller: emailUsuario,
          ),
          TextField(
            decoration: InputDecoration(
              labelText: "Senha",
            ),
            controller: senhaUsuario,
          ),
          ElevatedButton(
              onPressed: (){
                _cadastroUsuario();
                Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
              },
              child: Text("Cadastrar")
          )
        ],
      ),
    );
  }
}
