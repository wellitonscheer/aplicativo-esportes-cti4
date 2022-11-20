import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

class PrincipalEletronicos extends StatefulWidget {
  const PrincipalEletronicos({Key? key}) : super(key: key);

  @override
  State<PrincipalEletronicos> createState() => _PrincipalEletronicosState();
}

class _PrincipalEletronicosState extends State<PrincipalEletronicos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Eletronicos"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("Eletronicos bla, bla, bla")
          ],
        ),
      ),
    );
  }
}
