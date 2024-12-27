import 'package:flutter/material.dart';

class Agenda extends StatelessWidget {
  const Agenda({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(25.0),
      decoration: BoxDecoration(color: Colors.white),
      child: Center(child: Text(style: TextStyle(fontSize: 24), 'Agenda')),
    );
  }
}
