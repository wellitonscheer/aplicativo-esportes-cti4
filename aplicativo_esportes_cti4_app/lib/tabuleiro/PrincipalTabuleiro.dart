import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

class PrincipalTabuleiro extends StatefulWidget {
  const PrincipalTabuleiro({Key? key}) : super(key: key);

  @override
  State<PrincipalTabuleiro> createState() => _PrincipalTabuleiroState();
}

class _PrincipalTabuleiroState extends State<PrincipalTabuleiro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tabuleiro"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("Tabuleiro bla, bla, bla")
          ],
        ),
      ),
    );
  }
}
