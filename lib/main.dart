import 'package:flutter/material.dart';

main () {
  runApp(new PerguntaApp());
}

class PerguntaApp extends StatelessWidget {
  final perguntas = ['Qual seu animal favorito?', 'Qual sua cor favorita?']

  @override
  Widget build (BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('App Perguntas'),
        ),
        body: Column(
          children: [
            Text('Linha 1'),
            Text('Linha 2'),
            Text('Linha 3')
          ],
        ),
      ),
    );
  }
}