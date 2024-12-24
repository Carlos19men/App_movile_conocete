import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Novedad extends StatelessWidget {
  String titulo;

  Novedad(this.titulo);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Conócete')),
        backgroundColor: Color.fromARGB(255, 255, 167, 221),
      ),
      body: Center(
        child: Text(titulo),
      ),
    );
  }
}
