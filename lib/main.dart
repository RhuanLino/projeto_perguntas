import 'package:flutter/material.dart';
import ''

main () => runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget {
  
  final perguntas = ['Qual seu animal favorito?', 'Qual sua cor favorita?'];

  var perguntaSelecionada = 0;

  void responder () {
    print('Pergunta respondida!');
  }

  @override
  Widget build (BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('App Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Text(perguntas[perguntaSelecionada]),
            RaisedButton(
              child: Text('Resposta 1'),
              onPressed: (responder)
            ),
            RaisedButton(
              child: Text('Resposta 2'),
              onPressed: (responder)
            ),
            RaisedButton(
              child: Text('Resposta 3'),
              onPressed: (responder)
            )
          ],
        ),
      ),
    );
  }
}