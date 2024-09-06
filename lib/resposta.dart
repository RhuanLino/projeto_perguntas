import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {

  final void Function () quandoSelecionado;
  
  final String texto;
  const Resposta(this.texto, this.quandoSelecionado, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: FilledButton(
        onPressed: quandoSelecionado,
        style: const ButtonStyle(backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 35, 90, 229))),
        child: Text(texto),
      ),
    );
  }
}