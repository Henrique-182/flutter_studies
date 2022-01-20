import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() onPressed;
  const Resposta({Key? key, required this.texto, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          // background
          primary: Colors.blue,
          // letters
          onPrimary: Colors.white,
        ),
        child: Text(texto),
        onPressed: onPressed,
      ),
    );
  }
}
