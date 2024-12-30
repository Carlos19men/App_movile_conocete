import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextItem extends StatelessWidget {
  String texto;
  Icon icono;
  TextItem(this.icono, this.texto);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [icono, Text(texto)],
    );
  }
}
