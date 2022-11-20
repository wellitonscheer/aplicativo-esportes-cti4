import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

class Principal extends StatefulWidget {
  const Principal({Key? key}) : super(key: key);

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
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
