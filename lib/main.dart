import 'package:flutter/material.dart';

main () => runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget {
  
  final perguntas = ['Qual seu animal favorito?', 'Qual sua cor favorita?'];

  var perguntaSelecionada = 0;

  PerguntaApp({super.key});

  void responder () {
    print('Pergunta respondida!');
  }

  @override
  Widget build (BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('App Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Text(perguntas[perguntaSelecionada]),
            ElevatedButton(
              child: const Text('Resposta 1'),
              onPressed: (responder)
            ),
            ElevatedButton(
              child: const Text('Resposta 2'),
              onPressed: (responder)
            ),
            ElevatedButton(
              child: const Text('Resposta 3'),
              onPressed: (responder)
            )
          ],
        ),
      ),
    );
  }
}