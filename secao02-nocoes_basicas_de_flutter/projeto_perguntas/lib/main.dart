import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questao.dart';
import 'package:projeto_perguntas/resposta.dart';

void main() {
  runApp(const PerguntaApp());
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({ Key? key }) : super(key: key);

  @override
  State<PerguntaApp> createState() => _PerguntaAppState();
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
    print(_perguntaSelecionada);
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
            Questao(texto: perguntas[_perguntaSelecionada]),
            const Resposta(texto: "Resposta 1"),
            const Resposta(texto: "Resposta 2"),
            const Resposta(texto: "Resposta 3"),
          ],
        ),
      ),
    );
  }
}