import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questao.dart';
import 'package:projeto_perguntas/resposta.dart';

void main() {
  runApp(const PerguntaApp());
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({Key? key}) : super(key: key);

  @override
  State<PerguntaApp> createState() => _PerguntaAppState();
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> perguntas = [
      {
        "texto": "Qual é a sua cor preferida?",
        "respostas": ['Preto', 'Vermelho', 'Verde', 'Branco'],
      },
      {
        "texto": "Qual é o seu animal favorito?",
        'respostas': ['Coelho', 'Cobra', 'Elefante', 'Leão'],
      },
      {
        "texto": "Qual é o seu instrutor favorito?",
        "respostas": ['Maria', 'João', 'Leo', 'Pedro']
      }
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
            Questao(texto: perguntas[_perguntaSelecionada]["texto"].toString()),
            Resposta(
              texto: "Resposta 1",
              onPressed: _responder,
            ),
            Resposta(
              texto: "Resposta 2",
              onPressed: _responder,
            ),
            Resposta(
              texto: "Resposta 3",
              onPressed: _responder,
            ),
          ],
        ),
      ),
    );
  }
}
