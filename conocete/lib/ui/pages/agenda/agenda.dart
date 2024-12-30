import 'package:flutter/material.dart';
import '../widgest/recordatorioItem.dart';

// ignore: must_be_immutable
class Agenda extends StatelessWidget {
  List<RecordatorioItem> recordatorios = [
    RecordatorioItem('tarea 1'),
    RecordatorioItem('tarea 2'),
    RecordatorioItem('tarea 3')
  ];

  Agenda({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(25.0),
      decoration: BoxDecoration(color: Colors.white),
      child: Container(
        decoration: BoxDecoration(color: Colors.pink[100]),
        child: ListView(
          children: [
            //calendario
            Container(
              decoration: BoxDecoration(color: Colors.pink[900]),
            ),

            ElevatedButton(onPressed: null, child: Text('Nuevo recordatorio')),

            Divider(),

            Positioned(child: Text('Tareas pendientes')),

            Row(
              children: recordatorios,
            ),

            Divider(),

            Positioned(child: Text('Tareas de hoy')),

            Row(
              children: recordatorios,
            ),

            Divider(),

            Positioned(child: Text('Proximas tareas')),

            Row(
              children: recordatorios,
            ),
          ],
        ),
      ),
    );
  }
}
