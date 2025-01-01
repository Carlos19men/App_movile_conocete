import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Bodymargin extends StatelessWidget {
  Widget pantalla;

  Bodymargin(
    this.pantalla,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      child: pantalla,
    );
  }
}
