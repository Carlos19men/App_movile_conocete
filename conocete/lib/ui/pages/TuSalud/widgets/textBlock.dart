import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextBlock extends StatelessWidget {
  String informacion, dato;
  Color color;

  TextBlock(this.informacion, this.dato, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 30.0,
      child: Row(
        children: [
          Text(informacion),
          Text(
            dato,
            style: TextStyle(color: color),
          )
        ],
      ),
    );
  }
}
