import 'all_widgets.dart';
import 'package:flutter/material.dart';
import 'Global.dart' as global;
import 'package:nice_buttons/nice_buttons.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final _auten = FirebaseAuth.instance;
  TextEditingController email = TextEditingController();
  TextEditingController senhaEmail = TextEditingController();

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
                controller: email,
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
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              child: TextField(
                controller: senhaEmail,
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
                  hintText: 'Coloque a sua senha'
                ),
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
                onTap: (a) async{
                  try {
                    await _auten.signInWithEmailAndPassword(email: email.text, password: senhaEmail.text);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Todos()));
                  } catch (erro){
                    showDialog<void>(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text("Erro ao Logar"),
                          content: Text("Verifique a sua usuario e senha e tente novamente"),
                        );
                      }
                  );
                  }
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
