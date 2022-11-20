import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

class PrincipalOlimpicos extends StatefulWidget {
  const PrincipalOlimpicos({Key? key}) : super(key: key);

  @override
  State<PrincipalOlimpicos> createState() => _PrincipalOlimpicosState();
}

class _PrincipalOlimpicosState extends State<PrincipalOlimpicos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Olimpicos"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("Olimpicos bla, bla, bla")
          ],
        ),
      ),
    );
  }
}
