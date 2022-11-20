import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

class PrincipalRpg extends StatefulWidget {
  const PrincipalRpg({Key? key}) : super(key: key);

  @override
  State<PrincipalRpg> createState() => _PrincipalRpgState();
}

class _PrincipalRpgState extends State<PrincipalRpg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RPG"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("RPG bla, bla, bla")
          ],
        ),
      ),
    );
  }
}
