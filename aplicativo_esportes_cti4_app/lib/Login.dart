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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Center(
          child: Column(
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
                    child: Text("Entrar")
                ),
                ElevatedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Cadastro()));
                    },
                    child: Text("Se Cadastrar")
                )
              ]
          )
      ),
    );
  }
  void Entrar() {
     FirebaseFirestore.instance.collection('usuarios').get().then((value) {
       //String usuario = value.docs[0].get("usuario");
       var senhaBanco = "";
       var senhaFild = senhaUsuario.text;
       var usuarioFild = usuario.text;
       value.docs.forEach((element) {
         if(element["usuario"] == usuarioFild){
           senhaBanco = element["senhaUsuario"];
           return;
         }
       });
       if(senhaFild == ""){
         showDialog<void>(
             context: context,
             builder: (BuildContext context){
               return AlertDialog(
                 title: Text("Erro ao Logar"),
                 content: Text("Verifique a sua usuario e senha e tente novamente"),
               );
             }
         );
       }
       else{
         Navigator.push(context, MaterialPageRoute(builder: (context) => Todos()));
       }
     });
  }
}
