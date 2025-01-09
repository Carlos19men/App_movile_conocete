import 'package:flutter/material.dart';

import '../widgets/cust_appbar.dart';

// ignore: must_be_immutable
class Novedad extends StatelessWidget {
  String titulo;

  String texto = 'esto es un texto mas o menos referente a la novedad';

  Novedad(this.titulo, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Custom_appbar(),
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
