import 'package:flutter/material.dart';
import '../../widgets/recordatorioItem.dart';

class Recordatorio extends StatelessWidget {
  const Recordatorio({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 300.0,
      margin: EdgeInsets.only(right: 10.0, left: 10.0, top: 15.0),
      decoration: BoxDecoration(
          color: Color.fromARGB(200, 255, 167, 221),
          borderRadius: BorderRadius.circular(15.0)),
      child: Column(
        children: <Widget>[
          Container(
              margin: EdgeInsets.only(top: 10.0),
              child: Text(
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
                  'Recordatorios')),
          Container(
            width: 300.0,
            height: 245.0,
            margin: EdgeInsets.only(right: 10.0, left: 10.0),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15.0)),
            child: ListView(
              children: <Widget>[
                RecordatorioItem('Cita con Oncolgo'),
                RecordatorioItem('Auton-examen'),
                RecordatorioItem('Cita con Oncolgo'),
                RecordatorioItem('Auton-examen'),
                RecordatorioItem('Auton-examen'),
                RecordatorioItem('Auton-examen'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
