import 'package:flutter/material.dart';

class SpecialistPage extends StatelessWidget {
  const SpecialistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Especialistas')),
        backgroundColor: Color.fromARGB(255, 255, 167, 221),
      ),
      body: ListView(
        children: [
          //Imagen de la novedad
          Container(),

          //Titulo de la novedad
        ],
      ),
    );
  }
}
