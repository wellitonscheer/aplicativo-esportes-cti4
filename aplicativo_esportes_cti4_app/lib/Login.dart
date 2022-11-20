import 'all_widgets.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController usuario = TextEditingController();
  TextEditingController senhaUsuario = TextEditingController();
  var retorno = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextField(
              decoration: InputDecoration(
                  labelText: "Usuario"
              ),
              controller: usuario,
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: "Senha"
              ),
              controller: senhaUsuario,
            ),
            ElevatedButton(
                onPressed: (){
                  Entrar();
                },
                child: Text("aa")
            ),
            Text(retorno),
          ],
        ),
      ),
    );
  }
  void Entrar() {
     FirebaseFirestore.instance.collection('usuarios').get().then((value) {
       //String usuario = value.docs[0].get("usuario");
       var dado = "";
       value.docs.forEach((element) {
         if(element["usuario"] == usuario.text){
           dado = element["senhaUsuario"];
         }
       });
       setState(() {
         retorno = dado;
       });
     });
  }
}
