import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

class PrincipalPadel extends StatefulWidget {
  const PrincipalPadel({Key? key}) : super(key: key);

  @override
  State<PrincipalPadel> createState() => _PrincipalPadelState();
}

class _PrincipalPadelState extends State<PrincipalPadel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Padel"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("Padel bla, bla, bla")
          ],
        ),
      ),
    );
  }
}
