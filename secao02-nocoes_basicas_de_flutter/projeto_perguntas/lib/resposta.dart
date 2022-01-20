import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  const Resposta({Key? key, required this.texto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(texto),
      onPressed: () {},
    );
  }
}
