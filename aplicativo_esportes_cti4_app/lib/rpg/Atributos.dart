import 'package:flutter/material.dart';

class Atributos extends StatefulWidget {
  const Atributos({super.key});

  @override
  State<Atributos> createState() => _AtributosState();
}

class _AtributosState extends State<Atributos> {

  String a = "a";
  TextEditingController edit = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
            onPressed: () {

            },
            child: Icon(Icons.expand_more)
        ),
        ElevatedButton(
            onPressed: () {

            },
            child: Icon(Icons.expand_less)
        ),
      ],
    );
  }
}
