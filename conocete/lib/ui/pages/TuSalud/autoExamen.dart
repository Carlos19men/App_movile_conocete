import 'package:flutter/material.dart';

class Autoexamen extends StatefulWidget {
  const Autoexamen({super.key});

  @override
  State<Autoexamen> createState() => _AutoexamenState();
}

class _AutoexamenState extends State<Autoexamen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.pink),
      child: ListView(children: [
        Container(
            width: MediaQuery.of(context).size.width,
            child: Column(children: [
              Text('Paso 1: '),
              Text(
                  'Estar atento a la presencia de los siguientes cambios al momento de realizar el examen: '),
              Text(
                  '1. cambio de textura\n2. cambio de temperatura\n3. cambio de la forma de la mama'),
              Text(
                  '4. Presencia de coloracion\n5.Presencia de dolor\n6. Secreción de alguna sustancia (pus, sangre, etc)')
            ])),

        //opciones
        Text('¿Apreciaste algo en este paso?'),

        Row(
          children: [
            ElevatedButton(onPressed: null, child: Text('Si')),
            ElevatedButton(onPressed: null, child: Text('No'))
          ],
        ),

        TextField(
          decoration:
              InputDecoration(hintText: 'Escribe aquí si encontraste algo'),
        ),

        Center(
          child: ElevatedButton(onPressed: () {}, child: Text('Siguiente')),
        )
      ]),
    );
  }
}
