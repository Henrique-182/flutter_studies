import 'package:flutter/material.dart';

void main() {
  runApp(const PerguntaApp());
}

class PerguntaApp extends StatelessWidget {
  const PerguntaApp({ Key? key }) : super(key: key);

  void responder(int numero) {
    print("Pergunta $numero respondida");
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      "Qual é a sua cor preferida?",
      "Qual é o seu animal favorito?",
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Perguntas",
          ),
        ),
        body: Column(
          children: [
            Text(perguntas[0]),
            ElevatedButton(
              child: const Text("Resposta 1"),
              onPressed: () {
                responder(1);
              },
            ),
            ElevatedButton(
              child: const Text("Resposta 2"),
              onPressed: () {
                responder(2);
              }, 
            ),
            ElevatedButton(
              child: const Text("Resposta 3"),
              onPressed: () {
                responder(3);
              }, 
            ),
          ],
        ),
      ),
    );
  }
}