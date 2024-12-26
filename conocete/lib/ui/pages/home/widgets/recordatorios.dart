import 'package:flutter/material.dart';

class Recordatorio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 300.0,
      margin: EdgeInsets.only(right: 10.0, left: 10.0, top: 275.0),
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

// ignore: must_be_immutable
class RecordatorioItem extends StatefulWidget {
  String tarea;

  RecordatorioItem(this.tarea);

  State<StatefulWidget> createState() {
    return _RecordatorioItem(this.tarea);
  }
}

class _RecordatorioItem extends State<RecordatorioItem> {
  String tarea;
  bool isCheked = false;
  bool newValue = false;

  TextStyle estiloTarea = const TextStyle(fontSize: 20);

  _RecordatorioItem(this.tarea);

  void modificaTarea(bool value) {
    setState(() {
      if (value) {
        estiloTarea = TextStyle(
            fontSize: 20,
            decoration: TextDecoration.lineThrough,
            color: const Color.fromARGB(98, 0, 0, 0));
      } else {
        estiloTarea = const TextStyle(fontSize: 20);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: 300.0,
        height: 70.0,
        decoration: BoxDecoration(
          color: const Color.fromARGB(152, 255, 255, 255),
          border: Border(
              bottom: BorderSide(color: Color.fromARGB(200, 255, 167, 221))),
        ),
        child: Row(
          children: <Widget>[
            Container(
              child: Icon(Icons.circle_notifications_rounded),
              margin: EdgeInsets.all(25.0),
            ),
            Text(
              tarea,
              style: estiloTarea,
            ),
            Checkbox(
              value: isCheked,
              onChanged: (bool? newValue) {
                isCheked = !isCheked;
                modificaTarea(isCheked);
              },
            )
          ],
        ),
      ),
    );
  }
}
