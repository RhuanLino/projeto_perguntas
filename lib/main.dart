import 'package:flutter/material.dart';
import './resultado.dart';
import './questionario.dart';

main () => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {

  var _perguntaSelecionada = 0;
  final _perguntas = const [
    {
      'texto': 'Qual seu animal favorito?',
      'resposta': [
        {'texto': 'Cachorro', 'nota': 10}, 
        {'texto': 'Gato', 'nota': 5},
        {'texto': 'Papagaio', 'nota': 9}, 
        {'texto': 'Tatu', 'nota': 4},
      ]
    },
    {
      'texto': 'Qual sua cor favorita?',
      'resposta': [
        {'texto': 'Vermelho', 'nota': 8},
        {'texto': 'Azul', 'nota': 10},
        {'texto': 'Branco', 'nota': 7},
        {'texto': 'Preto', 'nota': 10},
      ]
    },
    {
      'texto': 'Qual sua comida favorita?',
      'resposta': [
        {'texto': 'Macarrão', 'nota': 10},
        {'texto': 'Hambúrguer', 'nota': 10},
        {'texto': 'Pizza', 'nota': 10},
        {'texto': 'Sushi', 'nota': 10},
      ]
    },
  ];

  void _responder () {
    if(temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
      });
    }
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }
  
  @override
  Widget build (BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 35, 90, 229),
          title: const Text('App Perguntas',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),),
        ),
        body: temPerguntaSelecionada ? Questionario(
          perguntas: _perguntas, 
          perguntaSelecionada: _perguntaSelecionada, 
          quantoResponder: _responder) 
        : Resultado(),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});


  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}