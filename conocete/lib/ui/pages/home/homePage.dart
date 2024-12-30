import 'package:flutter/material.dart';
import 'widgets/recordatorios.dart';
import '../widgest/carousel.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(color: Colors.white),
        child: ListView(children: <Widget>[
          Center(child: Text(style: TextStyle(fontSize: 24), 'Novedades')),
          Carousel(),
          Recordatorio(),
        ]));
  }
}
