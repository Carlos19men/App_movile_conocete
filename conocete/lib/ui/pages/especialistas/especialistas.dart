import 'package:flutter/material.dart';
import '../widgest/bodyMargin.dart';
import 'widgets/cardSpecialis.dart';

class SpecialistPage extends StatelessWidget {
  const SpecialistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Especialistas')),
          backgroundColor: Color.fromARGB(255, 255, 167, 221),
        ),
        body: Bodymargin(
          ListView(
            children: [
              //Imagen de la novedad
              Cardspecialis(),
              Cardspecialis(),
              Cardspecialis(),
              Cardspecialis(),

              //Titulo de la novedad
            ],
          ),
        ));
  }
}
