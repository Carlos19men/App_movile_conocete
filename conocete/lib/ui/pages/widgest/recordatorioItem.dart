import 'package:flutter/material.dart';

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
        child: Container(
            margin: EdgeInsets.all(25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.circle_notifications_rounded),
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
            )),
      ),
    );
  }
}
