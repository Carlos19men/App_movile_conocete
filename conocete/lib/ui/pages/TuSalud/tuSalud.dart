import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Tusalud extends StatelessWidget {
  List<String> caracteristicas = [
    'Conóce tu cuerpo',
    'Exáminate',
    'Hazlo parte de tu rutina'
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: [
        Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 230, 246),
                borderRadius: BorderRadius.circular(25.0),
              ),
              width: MediaQuery.of(context).size.width,
              height: 200.0,
              margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
            ),
            Positioned(
              left: 20.0,
              bottom: 20.0,
              child: Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25.0)),
                child: Text(
                  'Realizar autoexamen',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
              ),
            ),
            Positioned(
                left: 60.0,
                top: 30.0,
                child: Row(
                  children: [Icon(Icons.abc), Text('Conóce tu cuerpo')],
                )),
          ],
        ),
        Divider(),
        Container(
            width: MediaQuery.of(context).size.width,
            height: 30.0,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2.0)),
            child: Text('Ultimo auto Examen: ')),
        Container(
            width: MediaQuery.of(context).size.width,
            height: 30.0,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2.0)),
            child: Text('Proximo autoexamen: ')),
        Divider(),
      ],
    );
  }
}
