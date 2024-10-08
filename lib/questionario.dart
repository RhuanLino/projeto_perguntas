import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

class Questionario extends StatelessWidget {
  
  List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function() quantoResponder;
  
  Questionario({
    required this.perguntas,
    required this.perguntaSelecionada,
    required this.quantoResponder,
    super.key
  });
  
  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }
  
  @override
  Widget build(BuildContext context) {

    List<Map<String, Object>> respostas = temPerguntaSelecionada ? perguntas [perguntaSelecionada].cast() ['resposta']: [];

    return Column(
      children: <Widget>[
        Questao(perguntas[perguntaSelecionada] ['texto'].toString()),
        ...respostas.map((resp) => Resposta(resp['texto'] as String, quantoResponder))
      ],
    );
  }
}