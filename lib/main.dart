import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

main () => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {

  var _perguntaSelecionada = 0;
  
  void _responder () {
    setState(() {
      _perguntaSelecionada++;
    });
    print(_perguntaSelecionada);
  }

  @override
  Widget build (BuildContext context) {
    
    final perguntas = [
      {
        'texto': 'Qual seu animal favorito?',
        'resposta': ['Cachorro', 'Gato', 'Papagaio', 'Tatu']
      },
      {
        'texto': 'Qual sua cor favorita?',
        'resposta': ['Vermelho', 'Azul', 'Branco', 'Preto']
      },
      {
        'texto': 'Qual sua comida favorita?',
        'resposta': ['Macarrão', 'Hambúrguer', 'Pizza', 'Sushi']
      },
    ];

    List<Widget> respostas = [];

    for(String testoResp in perguntas[_perguntaSelecionada].cast() ['resposta']) {
      respostas.add(Resposta(testoResp, _responder));
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('App Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Questao(perguntas[_perguntaSelecionada] ['texto'].toString()),
            ...respostas
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {

  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}