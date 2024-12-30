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
    return ListView(
      children: [
        //calendario
        Container(
            width: MediaQuery.of(context).size.width,
            height: 300.0,
            margin: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                color: Colors.pink[900],
                borderRadius: BorderRadius.circular(25.0)),
            child: Center(child: Text('Calendario'))),

        Container(
            width: 70,
            height: 50,
            margin: EdgeInsets.only(left: 25, right: 25),
            child: ElevatedButton(
                child: Text('Nuevo Recordatorio'), onPressed: null)),

        Divider(),

        Positioned(child: Text('Tareas pendientes')),

        Column(
          children: recordatorios,
        ),

        Divider(),

        Positioned(child: Text('Tareas de hoy')),

        Column(
          children: recordatorios,
        ),

        Divider(),

        Positioned(child: Text('Proximas tareas')),

        Column(
          children: recordatorios,
        ),
      ],
    );
  }
}
