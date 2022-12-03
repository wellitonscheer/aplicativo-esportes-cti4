import 'all_widgets.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:nice_buttons/nice_buttons.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'Global.dart' as global;

class Cadastro extends StatefulWidget {
  const Cadastro({Key? key}) : super(key: key);

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro>{

  //var desloga = global.desloga();
  //var zera = global.zeraDados();
  TextEditingController usuario = TextEditingController();
  TextEditingController nomeUsuario = TextEditingController();
  TextEditingController emailUsuario = TextEditingController();
  TextEditingController senhaUsuario = TextEditingController();

  void _cadastroUsuario() async {
    var montaUsuario = {
      "usuario": usuario.text,
      "nomeUsuario": nomeUsuario.text,
      "emailUsuario": emailUsuario.text,
      "senhaUsuario": senhaUsuario.text
    };
    var email = emailUsuario.text;
    var senha = senhaUsuario.text;
    UserCredential credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email, password: senha);
    await FirebaseFirestore.instance
        .collection("usuarios")
        .doc(credential.user!.uid)
        .set(montaUsuario);
    var montaFicha = {
      "attForca": "0",
      "attForca2": "0",
      "attDestreza": "0",
      "attDestreza2": "0",
      "attConstituicao": "0",
      "attConstituicao2": "0",
      "attInteligencia": "0",
      "attInteligencia2": "0",
      "attSabedoria": "0",
      "attSabedoria2": "0",
      "attCarisma": "0",
      "attCarisma2": "0",
      "uid": credential.user!.uid
    };
    await FirebaseFirestore.instance
        .collection("ficha_rpg")
        .doc(credential.user!.uid)
        .set(montaFicha);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Cadastro"),
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
              SizedBox(height: 50),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 3, color: Colors.black),
                          borderRadius: BorderRadius.circular(15)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: Colors.black),
                          borderRadius: BorderRadius.circular(15)),
                      border: OutlineInputBorder(),
                      labelText: "Usuário",
                      labelStyle: TextStyle(color: Colors.black),
                      hintText: 'Coloque o seu usuário'),
                  controller: usuario,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 3, color: Colors.black),
                          borderRadius: BorderRadius.circular(15)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: Colors.black),
                          borderRadius: BorderRadius.circular(15)),
                      border: OutlineInputBorder(),
                      labelText: "Nome",
                      labelStyle: TextStyle(color: Colors.black),
                      hintText: 'Coloque o seu nome'),
                  controller: nomeUsuario,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 3, color: Colors.black),
                          borderRadius: BorderRadius.circular(15)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: Colors.black),
                          borderRadius: BorderRadius.circular(15)),
                      border: OutlineInputBorder(),
                      labelText: "E-mail",
                      labelStyle: TextStyle(color: Colors.black),
                      hintText: 'Coloque o seu e-mail'),
                  controller: emailUsuario,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 3, color: Colors.black),
                          borderRadius: BorderRadius.circular(15)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: Colors.black),
                          borderRadius: BorderRadius.circular(15)),
                      border: OutlineInputBorder(),
                      labelText: "Senha",
                      labelStyle: TextStyle(color: Colors.black),
                      hintText: 'Coloque o seu senha'),
                  controller: senhaUsuario,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: NiceButtons(
                  startColor: Colors.black,
                  endColor: Colors.black12,
                  borderColor: Colors.black,
                  stretch: false,
                  progress: false,
                  gradientOrientation: GradientOrientation.Horizontal,
                  onTap: (a) {
                    _cadastroUsuario();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  },
                  child: Text(
                    'Cadastrar',
                    //global.usuario,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
