import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'allMyWidgets.dart';

class PrincipalRpg extends StatefulWidget {
  const PrincipalRpg({Key? key}) : super(key: key);

  @override
  State<PrincipalRpg> createState() => _PrincipalRpgState();
}

class _PrincipalRpgState extends State<PrincipalRpg> {

  TextEditingController attForca = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RPG"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12)
              ),
              child: TextField(
                controller: attForca,
                onTapOutside: (event) {
                  FocusScope.of(context).unfocus();
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Forcas',
                ),
              ),
            ),
            Atributos("dasdasd"),
            Atributos("destreza")
          ],
        ),
      ),
    );
  }
}
