import 'all_widgets.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
}

class Login extends StatefulWidget{
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController usuario = TextEditingController();
  TextEditingController nomeUsuario = TextEditingController();
  TextEditingController emailUsuario = TextEditingController();
  TextEditingController senhaUsuario = TextEditingController();

  void _cadastroUsuario() async{
    var montaTexto = {"usuario":usuario.text, "nomeUsuario":nomeUsuario.text, "emailUsuario":emailUsuario.text, "senhaUsuario":senhaUsuario.text};
    FirebaseFirestore.instance.collection("usuarios").doc().set(montaTexto);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
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
            onPressed: _cadastroUsuario,
            child: Text("Cadastrar")
        )
      ],
    );
  }
}
