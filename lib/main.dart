import 'package:flutter/material.dart';

main () => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  
  final perguntas = ['Qual seu animal favorito?', 'Qual sua cor favorita?'];

  var _perguntaSelecionada = 0;
  
  void _responder () {
    setState(() {
      _perguntaSelecionada++;
    });
    print(_perguntaSelecionada);
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
            Text(perguntas[_perguntaSelecionada]),
            ElevatedButton(
              child: const Text('Resposta 1'),
              onPressed: (_responder)
            ),
            ElevatedButton(
              child: const Text('Resposta 2'),
              onPressed: (_responder)
            ),
            ElevatedButton(
              child: const Text('Resposta 3'),
              onPressed: (_responder)
            )
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