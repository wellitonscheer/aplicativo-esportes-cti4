import 'us_widgets/all_widgets.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // comando de teste para gravar no banco
  // FirebaseFirestore.instance.collection("clientes").doc().set({"nomeCliente":"Funcionou em casa","emailCliente":"funcionouemcasa@teste2.com.br"});

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    )
  );
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SPORT  ●  𝘛𝘌𝘊𝘏𝘕𝘖𝘓𝘖𝘎𝘠 𝘚𝘖𝘊𝘐𝘌𝘛𝘠  ● "),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Login()
          ],
        ),
      ),
    );
  }
}
