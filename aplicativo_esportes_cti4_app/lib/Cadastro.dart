import 'all_widgets.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:nice_buttons/nice_buttons.dart';


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
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 3, color: Colors.black),
                  borderRadius: BorderRadius.circular(15)
              ),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: Colors.black),
                  borderRadius: BorderRadius.circular(15)
              ),
              border: OutlineInputBorder(),
              labelText: "Usuário",
              labelStyle: TextStyle(color: Colors.black),
              hintText: 'Coloque o seu usuário'),
            controller: usuario,
          ),
          SizedBox(height: 20,),
          TextField(
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 3, color: Colors.black),
                  borderRadius: BorderRadius.circular(15)
              ),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: Colors.black),
                  borderRadius: BorderRadius.circular(15)
              ),
              border: OutlineInputBorder(),
              labelText: "Nome",
              labelStyle: TextStyle(color: Colors.black),
              hintText: 'Coloque o seu nome'),
            controller: nomeUsuario,
          ),
          SizedBox(height: 20,),
          TextField(
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 3, color: Colors.black),
                  borderRadius: BorderRadius.circular(15)
              ),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: Colors.black),
                  borderRadius: BorderRadius.circular(15)
              ),
              border: OutlineInputBorder(),
              labelText: "E-mail",
              labelStyle: TextStyle(color: Colors.black),
              hintText: 'Coloque o seu e-mail'),
            controller: emailUsuario,
          ),
          SizedBox(height: 20,),
          TextField(
            decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 3, color: Colors.black),
                    borderRadius: BorderRadius.circular(15)
                ),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Colors.black),
                    borderRadius: BorderRadius.circular(15)
                ),
                border: OutlineInputBorder(),
                labelText: "Senha",
                labelStyle: TextStyle(color: Colors.black),
                hintText: 'Coloque o seu senha'),
            controller: senhaUsuario,
          ),
          SizedBox(height: 60,),
          NiceButtons(
            startColor: Colors.black,
            endColor: Colors.black12,
            borderColor: Colors.black,
            stretch: false,
            progress: false,
            gradientOrientation: GradientOrientation.Horizontal,
            onTap: (a) {
              _cadastroUsuario();
              Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
            },
            child: Text(
              'Cadastrar',
              //global.usuario,
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
