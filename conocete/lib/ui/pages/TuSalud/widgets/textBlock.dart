import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextBlock extends StatelessWidget {
  String informacion, dato;
  Color color;

  TextBlock(this.informacion, this.dato, this.color);

  @override
  Widget build(BuildContext context) {
    //bloque del texto con los recordatorios
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              margin: EdgeInsets.only(left: 20.0), child: Text(informacion)),

          //espacio para el dato y el color
          Container(
            margin: EdgeInsets.only(right: 20.0),
            child: Text(
              dato,
              style: TextStyle(color: color),
            ),
          )
        ],
      ),
    );
  }
}
