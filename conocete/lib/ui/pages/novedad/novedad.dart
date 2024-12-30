import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Novedad extends StatelessWidget {
  String titulo;

  String texto = 'esto es un texto mas o menos referente a la novedad';

  Novedad(this.titulo);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Conócete')),
        backgroundColor: Color.fromARGB(255, 255, 167, 221),
      ),
      body: ListView(
        children: [
          //Imagen de la novedad
          Container(),

          //Titulo de la novedad
          Text(titulo),

          Divider(),

          //texto de la novedad
          Text(texto)
        ],
      ),
    );
  }
}
