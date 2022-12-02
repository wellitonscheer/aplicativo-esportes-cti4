import 'all_widgets.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'Global.dart' as global;
import 'package:nice_buttons/nice_buttons.dart';

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
        title: Text("Logar"),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: Container(
                    width: 200,
                    height: 150,
                    child: Image.asset('assets/logoNosso.jpeg')),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                controller: usuario,
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
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              child: TextField(
                controller: senhaUsuario,
                obscureText: true,
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
                    hintText: 'Coloque a sua senha'),
              ),
            ),
            SizedBox(
              height: 130,
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: NiceButtons(
                startColor: Colors.black,
                endColor: Colors.black12,
                borderColor: Colors.black,
                stretch: false,
                progress: false,
                gradientOrientation: GradientOrientation.Horizontal,
                onTap: (a) {
                  Entrar(usuario, senhaUsuario, context);
                },
                child: Text(
                  'Entrar',
                  //global.usuario,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith((states){
                      Colors.black;
                    }
                    )
                ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Cadastro()));
              },
              child: Text("Não tem uma conta? Clique aqui." , style: TextStyle(color: Colors.black)),
            )
          ],
        ),
      ),
    );
  }
}

void Entrar(usuario, senha, context) {
  FirebaseFirestore.instance.collection('usuarios').get().then((value) {
    //String usuario = value.docs[0].get("usuario");
    var senhaBanco = "";
    var senhaFild = senha.text;
    var usuarioFild = usuario.text;
    value.docs.forEach((element) {
      if (element["usuario"] == usuarioFild) {
        senhaBanco = element["senhaUsuario"];
        return;
      }
    });
    if (senhaFild == "") {
      showDialog<void>(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Erro ao Logar"),
              content: Text(
                  "Verifique a sua usuario e senha e tente novamente"),
            );
          }
      );
    }
    else {
      global.usuario = usuario.text;
      Navigator.push(context, MaterialPageRoute(builder: (context) => Todos()));
    }
  });
}