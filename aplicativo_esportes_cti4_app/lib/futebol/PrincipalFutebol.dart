import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

class PrincipalFutebol extends StatefulWidget {
  const PrincipalFutebol({Key? key}) : super(key: key);

  @override
  State<PrincipalFutebol> createState() => _PrincipalFutebolState();
}

class _PrincipalFutebolState extends State<PrincipalFutebol> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Futebol"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("Futebol bla, bla, bla")
          ],
        ),
      ),
    );
  }
}
