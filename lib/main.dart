import 'package:flutter/material.dart';

main () => runApp(PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {
  
  final perguntas = ['Qual seu animal favorito?', 'Qual sua cor favorita?'];

  var perguntaSelecionada = 0;
  
  void responder () {
    setState(() {
      perguntaSelecionada++;
    });
    print(perguntaSelecionada);
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

class PerguntaApp extends StatefulWidget {

  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}